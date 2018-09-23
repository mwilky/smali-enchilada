.class interface abstract Lcom/android/server/accessibility/EventStreamTransformation;
.super Ljava/lang/Object;
.source "EventStreamTransformation.java"


# virtual methods
.method public clearEvents(I)V
    .locals 1

    invoke-interface {p0}, Lcom/android/server/accessibility/EventStreamTransformation;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    :cond_0
    return-void
.end method

.method public abstract getNext()Lcom/android/server/accessibility/EventStreamTransformation;
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-interface {p0}, Lcom/android/server/accessibility/EventStreamTransformation;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 1

    invoke-interface {p0}, Lcom/android/server/accessibility/EventStreamTransformation;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    :cond_0
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 1

    invoke-interface {p0}, Lcom/android/server/accessibility/EventStreamTransformation;->getNext()Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    :cond_0
    return-void
.end method

.method public abstract setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
.end method
