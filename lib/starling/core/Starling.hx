package starling.core;

import starling.events.EventDispatcher;
import Type;
import Std;
import starling.display.DisplayObject;
import starling.utils.Color;
import starling.utils.RectangleUtil;
import haxe.Log;
import haxe.Timer;
import starling.events.KeyboardEvent;
import js.Boot;
import starling.events.ResizeEvent;
import starling.utils.SystemUtil;
import starling.core.StatsDisplay;
import starling.display.Stage;
import starling.events.TouchProcessor;
import starling.animation.Juggler;
import starling.rendering.Painter;

@:jsRequire("starling/core/Starling", "default")

extern class Starling extends starling.events.EventDispatcher implements Dynamic {

	function new(rootClass:Dynamic, stage:Dynamic, ?viewPort:Dynamic, ?stage3D:Dynamic, ?renderMode:Dynamic, ?profile:Dynamic);
	var __stage:Dynamic;
	var __rootClass:Dynamic;
	var __root:Dynamic;
	var __juggler:Dynamic;
	var __painter:Dynamic;
	var __touchProcessor:Dynamic;
	var __antiAliasing:Dynamic;
	var __frameTimestamp:Dynamic;
	var __frameID:Dynamic;
	var __leftMouseDown:Dynamic;
	var __statsDisplay:Dynamic;
	var __started:Dynamic;
	var __rendering:Dynamic;
	var __supportHighResolutions:Dynamic;
	var __skipUnchangedFrames:Dynamic;
	var __showStats:Dynamic;
	var __viewPort:Dynamic;
	var __previousViewPort:Dynamic;
	var __clippedViewPort:Dynamic;
	
	var __nativeStageEmpty:Dynamic;
	var __nativeOverlay:Dynamic;
	function dispose():Dynamic;
	function initialize():Dynamic;
	function initializeRoot():Dynamic;
	function nextFrame():Dynamic;
	function advanceTime(passedTime:Dynamic):Dynamic;
	function render():Dynamic;
	function updateViewPort(?forceUpdate:Dynamic):Dynamic;
	function updateNativeOverlay():Dynamic;
	function stopWithFatalError(message:Dynamic):Dynamic;
	function makeCurrent():Dynamic;
	function start():Dynamic;
	function stop(?suspendRendering:Dynamic):Dynamic;
	function setRequiresRedraw():Dynamic;
	function onStage3DError(event:Dynamic):Dynamic;
	function onContextCreated(event:Dynamic):Dynamic;
	function onContextRestored(event:Dynamic):Dynamic;
	function onEnterFrame(event:Dynamic):Dynamic;
	function onKey(event:Dynamic):Dynamic;
	function onResize(event:Dynamic):Dynamic;
	function onMouseLeave(event:Dynamic):Dynamic;
	function onTouch(event:Dynamic):Dynamic;
	var touchEventTypes:Dynamic;
	function get_touchEventTypes():Dynamic;
	var mustAlwaysRender:Dynamic;
	function get_mustAlwaysRender():Dynamic;
	var isStarted:Dynamic;
	function get_isStarted():Dynamic;
	var juggler:Dynamic;
	function get_juggler():Dynamic;
	var painter:Dynamic;
	function get_painter():Dynamic;
	var context:Dynamic;
	function get_context():Dynamic;
	var simulateMultitouch:Dynamic;
	function get_simulateMultitouch():Dynamic;
	function set_simulateMultitouch(value:Dynamic):Dynamic;
	var enableErrorChecking:Dynamic;
	function get_enableErrorChecking():Dynamic;
	function set_enableErrorChecking(value:Dynamic):Dynamic;
	var antiAliasing:Dynamic;
	function get_antiAliasing():Dynamic;
	function set_antiAliasing(value:Dynamic):Dynamic;
	var viewPort:Dynamic;
	function get_viewPort():Dynamic;
	function set_viewPort(value:Dynamic):Dynamic;
	var contentScaleFactor:Dynamic;
	function get_contentScaleFactor():Dynamic;
	var nativeOverlay:Dynamic;
	function get_nativeOverlay():Dynamic;
	var showStats:Dynamic;
	function get_showStats():Dynamic;
	function set_showStats(value:Dynamic):Dynamic;
	function showStatsAt(?horizontalAlign:Dynamic, ?verticalAlign:Dynamic, ?scale:Dynamic):Dynamic;
	var stage:Dynamic;
	function get_stage():Dynamic;
	var stage3D:Dynamic;
	function get_stage3D():Dynamic;
	
	function get_nativeStage():Dynamic;
	var root:Dynamic;
	function get_root():Dynamic;
	var rootClass:Dynamic;
	function get_rootClass():Dynamic;
	function set_rootClass(value:Dynamic):Dynamic;
	var shareContext:Dynamic;
	function get_shareContext():Dynamic;
	function set_shareContext(value:Dynamic):Dynamic;
	var profile:Dynamic;
	function get_profile():Dynamic;
	var supportHighResolutions:Dynamic;
	function get_supportHighResolutions():Dynamic;
	function set_supportHighResolutions(value:Dynamic):Dynamic;
	var skipUnchangedFrames:Dynamic;
	function get_skipUnchangedFrames():Dynamic;
	function set_skipUnchangedFrames(value:Dynamic):Dynamic;
	var touchProcessor:Dynamic;
	function get_touchProcessor():Dynamic;
	function set_touchProcessor(value:Dynamic):Dynamic;
	var frameID:Dynamic;
	function get_frameID():Dynamic;
	var contextValid:Dynamic;
	function get_contextValid():Dynamic;
	function isNativeDisplayObjectEmpty(object:Dynamic):Dynamic;
	static var VERSION:Dynamic;
	static var sCurrent:Dynamic;
	static var sAll:Dynamic;
	static var current:Dynamic;
	static function get_current():Dynamic;
	static var all:Dynamic;
	static function get_all():Dynamic;
	static var multitouchEnabled:Dynamic;
	static function get_multitouchEnabled():Dynamic;
	static function set_multitouchEnabled(value:Dynamic):Dynamic;


}