.class Lcom/android/server/wm/Dimmer$DimAnimatable;
.super Ljava/lang/Object;
.source "Dimmer.java"

# interfaces
.implements Lcom/android/server/wm/SurfaceAnimator$Animatable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/Dimmer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DimAnimatable"
.end annotation


# instance fields
.field private final mDimLayer:Landroid/view/SurfaceControl;

.field final synthetic this$0:Lcom/android/server/wm/Dimmer;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/Dimmer;Landroid/view/SurfaceControl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/Dimmer$DimAnimatable;->this$0:Lcom/android/server/wm/Dimmer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/wm/Dimmer$DimAnimatable;->mDimLayer:Landroid/view/SurfaceControl;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/Dimmer;Landroid/view/SurfaceControl;Lcom/android/server/wm/Dimmer$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/Dimmer$DimAnimatable;-><init>(Lcom/android/server/wm/Dimmer;Landroid/view/SurfaceControl;)V

    return-void
.end method


# virtual methods
.method public commitPendingTransaction()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimAnimatable;->this$0:Lcom/android/server/wm/Dimmer;

    invoke-static {v0}, Lcom/android/server/wm/Dimmer;->access$000(Lcom/android/server/wm/Dimmer;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->commitPendingTransaction()V

    return-void
.end method

.method public getAnimationLeashParent()Landroid/view/SurfaceControl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimAnimatable;->this$0:Lcom/android/server/wm/Dimmer;

    invoke-static {v0}, Lcom/android/server/wm/Dimmer;->access$000(Lcom/android/server/wm/Dimmer;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public getParentSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimAnimatable;->this$0:Lcom/android/server/wm/Dimmer;

    invoke-static {v0}, Lcom/android/server/wm/Dimmer;->access$000(Lcom/android/server/wm/Dimmer;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    return-object v0
.end method

.method public getPendingTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimAnimatable;->this$0:Lcom/android/server/wm/Dimmer;

    invoke-static {v0}, Lcom/android/server/wm/Dimmer;->access$000(Lcom/android/server/wm/Dimmer;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    return-object v0
.end method

.method public getSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimAnimatable;->mDimLayer:Landroid/view/SurfaceControl;

    return-object v0
.end method

.method public getSurfaceHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimAnimatable;->this$0:Lcom/android/server/wm/Dimmer;

    invoke-static {v0}, Lcom/android/server/wm/Dimmer;->access$000(Lcom/android/server/wm/Dimmer;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceHeight()I

    move-result v0

    return v0
.end method

.method public getSurfaceWidth()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimAnimatable;->this$0:Lcom/android/server/wm/Dimmer;

    invoke-static {v0}, Lcom/android/server/wm/Dimmer;->access$000(Lcom/android/server/wm/Dimmer;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getSurfaceWidth()I

    move-result v0

    return v0
.end method

.method public makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/Dimmer$DimAnimatable;->this$0:Lcom/android/server/wm/Dimmer;

    invoke-static {v0}, Lcom/android/server/wm/Dimmer;->access$000(Lcom/android/server/wm/Dimmer;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method public onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .locals 0

    return-void
.end method

.method public onAnimationLeashDestroyed(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    return-void
.end method
