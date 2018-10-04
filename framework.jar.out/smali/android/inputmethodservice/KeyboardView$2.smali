.class Landroid/inputmethodservice/KeyboardView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "KeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/inputmethodservice/KeyboardView;->initGestureDetector()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/inputmethodservice/KeyboardView;


# direct methods
.method constructor <init>(Landroid/inputmethodservice/KeyboardView;)V
    .locals 0

    iput-object p1, p0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-static {v1}, Landroid/inputmethodservice/KeyboardView;->access$500(Landroid/inputmethodservice/KeyboardView;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static/range {p4 .. p4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    sub-float/2addr v4, v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    sub-float/2addr v5, v6

    iget-object v6, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v6}, Landroid/inputmethodservice/KeyboardView;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    iget-object v7, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v7}, Landroid/inputmethodservice/KeyboardView;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    iget-object v8, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-static {v8}, Landroid/inputmethodservice/KeyboardView;->access$600(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    move-result-object v8

    const/16 v9, 0x3e8

    invoke-virtual {v8, v9}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->computeCurrentVelocity(I)V

    iget-object v8, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-static {v8}, Landroid/inputmethodservice/KeyboardView;->access$600(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    move-result-object v8

    invoke-virtual {v8}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->getXVelocity()F

    move-result v8

    iget-object v9, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-static {v9}, Landroid/inputmethodservice/KeyboardView;->access$600(Landroid/inputmethodservice/KeyboardView;)Landroid/inputmethodservice/KeyboardView$SwipeTracker;

    move-result-object v9

    invoke-virtual {v9}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->getYVelocity()F

    move-result v9

    const/4 v10, 0x0

    iget-object v11, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-static {v11}, Landroid/inputmethodservice/KeyboardView;->access$700(Landroid/inputmethodservice/KeyboardView;)I

    move-result v11

    int-to-float v11, v11

    cmpl-float v11, p3, v11

    const/4 v12, 0x1

    const/high16 v13, 0x40800000    # 4.0f

    if-lez v11, :cond_2

    cmpg-float v11, v3, v1

    if-gez v11, :cond_2

    int-to-float v11, v6

    cmpl-float v11, v4, v11

    if-lez v11, :cond_2

    iget-object v11, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-static {v11}, Landroid/inputmethodservice/KeyboardView;->access$800(Landroid/inputmethodservice/KeyboardView;)Z

    move-result v11

    if-eqz v11, :cond_1

    div-float v11, p3, v13

    cmpg-float v11, v8, v11

    if-gez v11, :cond_1

    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_1
    iget-object v2, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v2}, Landroid/inputmethodservice/KeyboardView;->swipeRight()V

    return v12

    :cond_2
    iget-object v11, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-static {v11}, Landroid/inputmethodservice/KeyboardView;->access$700(Landroid/inputmethodservice/KeyboardView;)I

    move-result v11

    neg-int v11, v11

    int-to-float v11, v11

    cmpg-float v11, p3, v11

    if-gez v11, :cond_4

    cmpg-float v11, v3, v1

    if-gez v11, :cond_4

    neg-int v11, v6

    int-to-float v11, v11

    cmpg-float v11, v4, v11

    if-gez v11, :cond_4

    iget-object v11, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-static {v11}, Landroid/inputmethodservice/KeyboardView;->access$800(Landroid/inputmethodservice/KeyboardView;)Z

    move-result v11

    if-eqz v11, :cond_3

    div-float v11, p3, v13

    cmpl-float v11, v8, v11

    if-lez v11, :cond_3

    const/4 v10, 0x1

    goto :goto_0

    :cond_3
    iget-object v2, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v2}, Landroid/inputmethodservice/KeyboardView;->swipeLeft()V

    return v12

    :cond_4
    iget-object v11, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-static {v11}, Landroid/inputmethodservice/KeyboardView;->access$700(Landroid/inputmethodservice/KeyboardView;)I

    move-result v11

    neg-int v11, v11

    int-to-float v11, v11

    cmpg-float v11, p4, v11

    if-gez v11, :cond_6

    cmpg-float v11, v1, v3

    if-gez v11, :cond_6

    neg-int v11, v7

    int-to-float v11, v11

    cmpg-float v11, v5, v11

    if-gez v11, :cond_6

    iget-object v11, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-static {v11}, Landroid/inputmethodservice/KeyboardView;->access$800(Landroid/inputmethodservice/KeyboardView;)Z

    move-result v11

    if-eqz v11, :cond_5

    div-float v11, p4, v13

    cmpl-float v11, v9, v11

    if-lez v11, :cond_5

    const/4 v10, 0x1

    goto :goto_0

    :cond_5
    iget-object v2, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v2}, Landroid/inputmethodservice/KeyboardView;->swipeUp()V

    return v12

    :cond_6
    iget-object v11, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-static {v11}, Landroid/inputmethodservice/KeyboardView;->access$700(Landroid/inputmethodservice/KeyboardView;)I

    move-result v11

    int-to-float v11, v11

    cmpl-float v11, p4, v11

    if-lez v11, :cond_8

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v3, v11

    cmpg-float v11, v1, v11

    if-gez v11, :cond_8

    int-to-float v11, v7

    cmpl-float v11, v5, v11

    if-lez v11, :cond_8

    iget-object v11, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-static {v11}, Landroid/inputmethodservice/KeyboardView;->access$800(Landroid/inputmethodservice/KeyboardView;)Z

    move-result v11

    if-eqz v11, :cond_7

    div-float v11, p4, v13

    cmpg-float v11, v9, v11

    if-gez v11, :cond_7

    const/4 v10, 0x1

    goto :goto_0

    :cond_7
    iget-object v2, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-virtual {v2}, Landroid/inputmethodservice/KeyboardView;->swipeDown()V

    return v12

    :cond_8
    :goto_0
    if-eqz v10, :cond_9

    iget-object v11, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    iget-object v12, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-static {v12}, Landroid/inputmethodservice/KeyboardView;->access$900(Landroid/inputmethodservice/KeyboardView;)I

    move-result v12

    iget-object v13, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-static {v13}, Landroid/inputmethodservice/KeyboardView;->access$1000(Landroid/inputmethodservice/KeyboardView;)I

    move-result v13

    iget-object v2, v0, Landroid/inputmethodservice/KeyboardView$2;->this$0:Landroid/inputmethodservice/KeyboardView;

    invoke-static {v2}, Landroid/inputmethodservice/KeyboardView;->access$1100(Landroid/inputmethodservice/KeyboardView;)I

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v15

    invoke-static/range {v11 .. v16}, Landroid/inputmethodservice/KeyboardView;->access$1200(Landroid/inputmethodservice/KeyboardView;IIIJ)V

    :cond_9
    const/4 v2, 0x0

    return v2
.end method
