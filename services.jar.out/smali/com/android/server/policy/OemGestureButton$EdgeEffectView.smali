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
    .param p2, "context"    # Landroid/content/Context;

    .line 1331
    iput-object p1, p0, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->this$0:Lcom/android/server/policy/OemGestureButton;

    .line 1332
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1333
    new-instance p1, Lcom/android/server/policy/OPEdgeEffect;

    invoke-direct {p1, p2}, Lcom/android/server/policy/OPEdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->mEffect:Lcom/android/server/policy/OPEdgeEffect;

    .line 1334
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 1338
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    .line 1339
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->mEffect:Lcom/android/server/policy/OPEdgeEffect;

    invoke-virtual {v0}, Lcom/android/server/policy/OPEdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1340
    const/16 v0, 0xb4

    .line 1341
    .local v0, "rotate":I
    const/4 v1, 0x0

    .line 1342
    .local v1, "translate_x":I
    const/4 v2, 0x0

    .line 1344
    .local v2, "translate_y":I
    iget-object v3, p0, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v3}, Lcom/android/server/policy/OemGestureButton;->access$1200(Lcom/android/server/policy/OemGestureButton;)I

    move-result v3

    if-nez v3, :cond_1

    .line 1345
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

    .line 1346
    const/16 v1, -0x168

    goto :goto_0

    .line 1348
    :cond_0
    const/16 v1, -0x42e

    .line 1350
    :goto_0
    const/16 v2, -0x3c

    .line 1354
    int-to-float v3, v0

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1355
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1356
    iget-object v3, p0, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->mEffect:Lcom/android/server/policy/OPEdgeEffect;

    invoke-virtual {v3, p1}, Lcom/android/server/policy/OPEdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    .end local v0    # "rotate":I
    .end local v1    # "translate_x":I
    .end local v2    # "translate_y":I
    goto :goto_1

    .line 1352
    .restart local v0    # "rotate":I
    .restart local v1    # "translate_x":I
    .restart local v2    # "translate_y":I
    :cond_1
    return-void

    .line 1358
    .end local v0    # "rotate":I
    .end local v1    # "translate_x":I
    .end local v2    # "translate_y":I
    :cond_2
    :goto_1
    return-void
.end method

.method public onAbsorb(I)V
    .locals 1
    .param p1, "velocity"    # I

    .line 1377
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->mEffect:Lcom/android/server/policy/OPEdgeEffect;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/OPEdgeEffect;->onAbsorb(I)V

    .line 1378
    return-void
.end method

.method public onPull(F)V
    .locals 1
    .param p1, "f"    # F

    .line 1361
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->mEffect:Lcom/android/server/policy/OPEdgeEffect;

    invoke-virtual {v0, p1}, Lcom/android/server/policy/OPEdgeEffect;->onPull(F)V

    .line 1362
    invoke-virtual {p0}, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->postInvalidateOnAnimation()V

    .line 1363
    return-void
.end method

.method public onPull(FF)V
    .locals 1
    .param p1, "deltaDistance"    # F
    .param p2, "displacement"    # F

    .line 1366
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->mEffect:Lcom/android/server/policy/OPEdgeEffect;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/policy/OPEdgeEffect;->onPull(FF)V

    .line 1367
    invoke-virtual {p0}, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->postInvalidateOnAnimation()V

    .line 1368
    return-void
.end method

.method public onRelease()V
    .locals 1

    .line 1381
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->mEffect:Lcom/android/server/policy/OPEdgeEffect;

    invoke-virtual {v0}, Lcom/android/server/policy/OPEdgeEffect;->onRelease()V

    .line 1382
    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->mEffect:Lcom/android/server/policy/OPEdgeEffect;

    invoke-virtual {v0}, Lcom/android/server/policy/OPEdgeEffect;->finish()V

    .line 1383
    invoke-virtual {p0}, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->postInvalidateOnAnimation()V

    .line 1384
    return-void
.end method

.method public setSize()V
    .locals 3

    .line 1371
    const/16 v0, 0x15e

    .line 1372
    .local v0, "width":I
    const/16 v1, 0x15e

    .line 1373
    .local v1, "height":I
    iget-object v2, p0, Lcom/android/server/policy/OemGestureButton$EdgeEffectView;->mEffect:Lcom/android/server/policy/OPEdgeEffect;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/policy/OPEdgeEffect;->setSize(II)V

    .line 1374
    return-void
.end method
