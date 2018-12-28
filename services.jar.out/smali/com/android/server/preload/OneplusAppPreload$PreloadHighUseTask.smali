.class Lcom/android/server/preload/OneplusAppPreload$PreloadHighUseTask;
.super Ljava/lang/Object;
.source "OneplusAppPreload.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/preload/OneplusAppPreload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreloadHighUseTask"
.end annotation


# instance fields
.field mHighUsedApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/preload/OneplusAppPreload;


# direct methods
.method public constructor <init>(Lcom/android/server/preload/OneplusAppPreload;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHighUseTask;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHighUseTask;->mHighUsedApps:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHighUseTask;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v0}, Lcom/android/server/preload/OneplusAppPreload;->access$600(Lcom/android/server/preload/OneplusAppPreload;)Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload$PreloadHighUseTask;->mHighUsedApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->preloadHighUsedAfterBoot(Ljava/util/ArrayList;)V

    return-void
.end method
