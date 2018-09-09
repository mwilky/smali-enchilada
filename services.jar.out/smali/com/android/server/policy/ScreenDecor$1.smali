.class Lcom/android/server/policy/ScreenDecor$1;
.super Ljava/lang/Object;
.source "ScreenDecor.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/ScreenDecor;-><init>(Landroid/content/Context;Lcom/android/server/policy/WindowManagerPolicy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/ScreenDecor;


# direct methods
.method constructor <init>(Lcom/android/server/policy/ScreenDecor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/ScreenDecor;

    .line 93
    iput-object p1, p0, Lcom/android/server/policy/ScreenDecor$1;->this$0:Lcom/android/server/policy/ScreenDecor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 97
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1
    .param p1, "displayId"    # I

    .line 104
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor$1;->this$0:Lcom/android/server/policy/ScreenDecor;

    invoke-virtual {v0}, Lcom/android/server/policy/ScreenDecor;->updateOrientation()V

    .line 105
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 101
    return-void
.end method
