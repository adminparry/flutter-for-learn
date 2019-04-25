# state的生命周期


initState
插入渲染树时调用，只调用一次


didChangeDependencies
state依赖的对象发生变化时调用


didUpdateWidget
组件状态改变时候调用，可能会调用多次


build
构建Widget时调用


deactivate
当移除渲染树的时候调用


dispose
组件即将销毁时调用
