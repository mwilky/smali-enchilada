.class Lcom/android/server/wm/DisplayContent$NonMagnifiableWindowContainers;
.super Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;
.source "DisplayContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NonMagnifiableWindowContainers"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/DisplayContent;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;Lcom/android/server/wm/WindowManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/DisplayContent$NonMagnifiableWindowContainers;->this$0:Lcom/android/server/wm/DisplayContent;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/DisplayContent$NonAppWindowContainers;-><init>(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;Lcom/android/server/wm/WindowManagerService;)V

    return-void
.end method


# virtual methods
.method applyMagnificationSpec(Landroid/view/SurfaceControl$Transaction;Landroid/view/MagnificationSpec;)V
    .locals 0

    return-void
.end method
