.class Lcom/android/server/preload/OneplusAppPreload$OnlineConfigObserver;
.super Ljava/lang/Object;
.source "OneplusAppPreload.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/preload/OneplusAppPreload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnlineConfigObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/preload/OneplusAppPreload;


# direct methods
.method constructor <init>(Lcom/android/server/preload/OneplusAppPreload;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/preload/OneplusAppPreload$OnlineConfigObserver;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload$OnlineConfigObserver;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-virtual {v0, p1}, Lcom/android/server/preload/OneplusAppPreload;->resolveOnlineConfig(Lorg/json/JSONArray;)V

    return-void
.end method
