import Context3DTriangleFace from "openfl/display3D/Context3DTriangleFace";

import Starling from "starling/core/Starling";
import Image from "starling/display/Image";
import Sprite3D from "starling/display/Sprite3D";
import Event from "starling/events/Event";
import Painter from "starling/rendering/Painter";
import Texture from "starling/textures/Texture";

import Constants from "./../constants";
import Game from "./../game";
import Scene from "./scene";

class Sprite3DScene extends Scene
{
    constructor()
    {
        super();
        var texture = Game.assets.getTexture("gamua-logo");
        
        this._cube = this.createCube(texture);
        this._cube.x = Constants.CenterX;
        this._cube.y = Constants.CenterY;
        this._cube.z = 100;
        
        this.addChild(this._cube);
        
        this.addEventListener(Event.ADDED_TO_STAGE, this.start);
        this.addEventListener(Event.REMOVED_FROM_STAGE, this.stop);
    }

    start = () =>
    {
        Starling.current.juggler.tween(this._cube, 6, { rotationX: 2 * Math.PI, repeatCount: 0 });
        Starling.current.juggler.tween(this._cube, 7, { rotationY: 2 * Math.PI, repeatCount: 0 });
        Starling.current.juggler.tween(this._cube, 8, { rotationZ: 2 * Math.PI, repeatCount: 0 });
    }

    stop = () =>
    {
        Starling.current.juggler.removeTweens(this._cube);
    }

    createCube(texture)
    {
        var offset = texture.width / 2;
        
        var front = this.createSidewall(texture, 0xff0000);
        front.z = -offset;
        
        var back = this.createSidewall(texture, 0x00ff00);
        back.rotationX = Math.PI;
        back.z = offset;
        
        var top = this.createSidewall(texture, 0x0000ff);
        top.y = - offset;
        top.rotationX = Math.PI / -2.0;
        
        var bottom = this.createSidewall(texture, 0xffff00);
        bottom.y = offset;
        bottom.rotationX = Math.PI / 2.0;
        
        var left = this.createSidewall(texture, 0xff00ff);
        left.x = -offset;
        left.rotationY = Math.PI / 2.0;
        
        var right = this.createSidewall(texture, 0x00ffff);
        right.x = offset;
        right.rotationY = Math.PI / -2.0;
        
        var cube = new Sprite3D();
        cube.addChild(front);
        cube.addChild(back);
        cube.addChild(top);
        cube.addChild(bottom);
        cube.addChild(left);
        cube.addChild(right);
        
        return cube;
    }
    
    createSidewall(texture, color=0xffffff)
    {
        var image = new Image(texture);
        image.color = color;
        image.alignPivot();
        
        var sprite = new Sprite3D();
        sprite.addChild(image);

        return sprite;
    }
    
    render(painter)
    {
        // Starling does not make any depth-tests, so we use a trick in order to only show
        // the front quads: we're activating backface culling, i.e. we hide triangles at which
        // we look from behind. 

        painter.pushState();
        painter.state.culling = "back";
        super.render(painter);
        painter.popState();
    }
}

export default Sprite3DScene;