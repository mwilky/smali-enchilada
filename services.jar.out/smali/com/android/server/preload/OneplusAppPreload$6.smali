.class Lcom/android/server/preload/OneplusAppPreload$6;
.super Ljava/lang/Thread;
.source "OneplusAppPreload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/preload/OneplusAppPreload;->updateOnlineConfig()V
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

    iput-object p1, p0, Lcom/android/server/preload/OneplusAppPreload$6;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload$6;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v1}, Lcom/android/server/preload/OneplusAppPreload;->access$500(Lcom/android/server/preload/OneplusAppPreload;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "AppPreload"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload$6;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/preload/OneplusAppPreload;->resolveOnlineConfig(Lorg/json/JSONArray;)V

    return-void
.end method
