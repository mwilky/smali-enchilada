.class Lcom/oneplus/oiface/OifaceManager$MyConfigUpdater;
.super Ljava/lang/Object;
.source "OifaceManager.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/oiface/OifaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/oiface/OifaceManager;


# direct methods
.method constructor <init>(Lcom/oneplus/oiface/OifaceManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/oiface/OifaceManager;

    .line 186
    iput-object p1, p0, Lcom/oneplus/oiface/OifaceManager$MyConfigUpdater;->this$0:Lcom/oneplus/oiface/OifaceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 2
    .param p1, "configJSONArray"    # Lorg/json/JSONArray;

    .line 189
    sget-boolean v0, Lcom/oneplus/oiface/OifaceManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OifaceManager"

    const-string v1, "updateConfig"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/oneplus/oiface/OifaceManager$MyConfigUpdater;->this$0:Lcom/oneplus/oiface/OifaceManager;

    invoke-static {v0, p1}, Lcom/oneplus/oiface/OifaceManager;->access$100(Lcom/oneplus/oiface/OifaceManager;Lorg/json/JSONArray;)V

    .line 191
    return-void
.end method
