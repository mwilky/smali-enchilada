.class Lcom/android/server/policy/OemGestureButton$5;
.super Ljava/lang/Object;
.source "OemGestureButton.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OemGestureButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/OemGestureButton;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OemGestureButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/OemGestureButton$5;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/policy/OemGestureButton$5;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-static {v0, p2}, Lcom/android/server/policy/OemGestureButton;->access$600(Lcom/android/server/policy/OemGestureButton;Landroid/view/MotionEvent;)V

    const/4 v0, 0x1

    return v0
.end method
