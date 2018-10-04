.class Lcom/android/internal/app/PlatLogoActivity$1;
.super Ljava/lang/Object;
.source "PlatLogoActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/PlatLogoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final pc0:Landroid/view/MotionEvent$PointerCoords;

.field final pc1:Landroid/view/MotionEvent$PointerCoords;

.field final synthetic this$0:Lcom/android/internal/app/PlatLogoActivity;


# direct methods
.method constructor <init>(Lcom/android/internal/app/PlatLogoActivity;)V
    .locals 1

    iput-object p1, p0, Lcom/android/internal/app/PlatLogoActivity$1;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$1;->pc0:Landroid/view/MotionEvent$PointerCoords;

    new-instance v0, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v0}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$1;->pc1:Landroid/view/MotionEvent$PointerCoords;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-le v0, v1, :cond_1

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity$1;->pc0:Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {p2, v0, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$1;->pc1:Landroid/view/MotionEvent$PointerCoords;

    invoke-virtual {p2, v1, v0}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    iget-object v0, p0, Lcom/android/internal/app/PlatLogoActivity$1;->this$0:Lcom/android/internal/app/PlatLogoActivity;

    iget-object v0, v0, Lcom/android/internal/app/PlatLogoActivity;->bg:Lcom/android/internal/app/PlatLogoActivity$PBackground;

    iget-object v2, p0, Lcom/android/internal/app/PlatLogoActivity$1;->pc0:Landroid/view/MotionEvent$PointerCoords;

    iget v2, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget-object v3, p0, Lcom/android/internal/app/PlatLogoActivity$1;->pc1:Landroid/view/MotionEvent$PointerCoords;

    iget v3, v3, Landroid/view/MotionEvent$PointerCoords;->x:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    iget-object v4, p0, Lcom/android/internal/app/PlatLogoActivity$1;->pc0:Landroid/view/MotionEvent$PointerCoords;

    iget v4, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget-object v5, p0, Lcom/android/internal/app/PlatLogoActivity$1;->pc1:Landroid/view/MotionEvent$PointerCoords;

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/android/internal/app/PlatLogoActivity$PBackground;->setRadius(F)V

    :cond_1
    :goto_0
    return v1
.end method
