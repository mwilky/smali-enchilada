.class Lcom/android/server/preload/OneplusAppPreload$1;
.super Ljava/lang/Thread;
.source "OneplusAppPreload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/preload/OneplusAppPreload;->writeRecord()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/preload/OneplusAppPreload;


# direct methods
.method constructor <init>(Lcom/android/server/preload/OneplusAppPreload;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/preload/OneplusAppPreload$1;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload$1;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v0}, Lcom/android/server/preload/OneplusAppPreload;->access$000(Lcom/android/server/preload/OneplusAppPreload;)V

    return-void
.end method
