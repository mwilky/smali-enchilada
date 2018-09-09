.class Lcom/android/server/wm/WindowState$3;
.super Ljava/lang/Object;
.source "WindowState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/WindowState;->isAppWindowCompat(Landroid/graphics/Rect;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/WindowState;

.field final synthetic val$isCompat:Z

.field final synthetic val$pf:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowState;Landroid/graphics/Rect;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wm/WindowState;

    .line 887
    iput-object p1, p0, Lcom/android/server/wm/WindowState$3;->this$0:Lcom/android/server/wm/WindowState;

    iput-object p2, p0, Lcom/android/server/wm/WindowState$3;->val$pf:Landroid/graphics/Rect;

    iput-boolean p3, p0, Lcom/android/server/wm/WindowState$3;->val$isCompat:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 891
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState$3;->val$pf:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/WindowState$3;->val$pf:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-le v0, v1, :cond_0

    sget v0, Lcom/android/server/wm/WindowManagerService;->mPortTop:I

    goto :goto_0

    .line 892
    :cond_0
    sget v0, Lcom/android/server/wm/WindowManagerService;->mLandLeft:I

    .line 893
    .local v0, "offSet":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/WindowState$3;->this$0:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mClient:Landroid/view/IWindow;

    iget-boolean v2, p0, Lcom/android/server/wm/WindowState$3;->val$isCompat:Z

    invoke-interface {v1, v2, v0}, Landroid/view/IWindow;->enterScreenCompatMode(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 896
    .end local v0    # "offSet":I
    goto :goto_1

    .line 894
    :catch_0
    move-exception v0

    .line 895
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "WindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ScreenCompat: can\'t send notification to win="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method
