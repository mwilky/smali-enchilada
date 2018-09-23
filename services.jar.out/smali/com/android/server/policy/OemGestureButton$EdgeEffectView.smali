.class Lcom/android/server/policy/OemGestureButton$EdgeEffectView;
.super Landroid/widget/ImageView;
.source "OemGestureButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OemGestureButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EdgeEffectView"
.end annotation


# instance fields
.field mEffect:Lcom/android/server/policy/OPEdgeEffect;

.field final synthetic this$0:Lcom/android/server/policy/OemGestureButton;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/OemGestureButton;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance p1, Lcom/android/server/policy/OPEdgeEffect;

    invoke-direct {p1, p2}, Lcom/android/server/policy/OPEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->mEffect:Lcom/android/server/policy/OPEdgeEffect;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->mEffect:Lcom/android/server/policy/OPEdgeEffect;

    invoke-virtual {v0}, Lcom/android/server/policy/OPEdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0xb4

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v3}, Lcom/android/server/policy/OemGestureButton;->access$1200(Lcom/android/server/policy/OemGestureButton;)I

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v3}, Lcom/android/server/policy/OemGestureButton;->access$2400(Lcom/android/server/policy/OemGestureButton;)F

    move-result v3

    iget-object v4, p0, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v4}, Lcom/android/server/policy/OemGestureButton;->access$1700(Lcom/android/server/policy/OemGestureButton;)I

    move-result v4

    div-int/lit8 v4, v4, 0x3

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    const/16 v1, -0x168

    goto :goto_0

    :cond_0
    const/16 v1, -0x42e

    :goto_0
    const/16 v2, -0x3c

    int-to-float v3, v0

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    int-to-float v3, v1

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v3, p0, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->mEffect:Lcom/android/server/policy/OPEdgeEffect;

    invoke-virtual {v3, p1}, Lcom/android/server/policy/OPEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public onAbsorb(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->mEffect:Lcom/android/server/policy/OPEdgeEffect;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/OPEdgeEffect;->onAbsorb(I)V

    return-void
.end method

.method public onPull(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->mEffect:Lcom/android/server/policy/OPEdgeEffect;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/OPEdgeEffect;->onPull(F)V

    invoke-virtual {p0}, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->postInvalidateOnAnimation()V

    return-void
.end method

.method public onPull(FF)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->mEffect:Lcom/android/server/policy/OPEdgeEffect;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/OPEdgeEffect;->onPull(FF)V

    invoke-virtual {p0}, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->postInvalidateOnAnimation()V

    return-void
.end method

.method public onRelease()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->mEffect:Lcom/android/server/policy/OPEdgeEffect;

    invoke-virtual {v0}, Lcom/android/server/policy/OPEdgeEffect;->onRelease()V

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->mEffect:Lcom/android/server/policy/OPEdgeEffect;

    invoke-virtual {v0}, Lcom/android/server/policy/OPEdgeEffect;->finish()V

    invoke-virtual {p0}, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->postInvalidateOnAnimation()V

    return-void
.end method

.method public setSize()V
    .locals 3

    const/16 v0, 0x15e

    const/16 v1, 0x15e

    iget-object v2, p0, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->mEffect:Lcom/android/server/policy/OPEdgeEffect;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/policy/OPEdgeEffect;->setSize(II)V

    return-void
.end method
