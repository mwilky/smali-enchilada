.class public interface abstract Landroid/view/WindowManagerPolicyConstants$PointerEventListener;
.super Ljava/lang/Object;
.source "WindowManagerPolicyConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowManagerPolicyConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PointerEventListener"
.end annotation


# virtual methods
.method public abstract onPointerEvent(Landroid/view/MotionEvent;)V
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;I)V
    .locals 0

    if-nez p2, :cond_0

    invoke-interface {p0, p1}, Landroid/view/WindowManagerPolicyConstants$PointerEventListener;->onPointerEvent(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method
