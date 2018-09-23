.class Lcom/android/server/am/EmbryoManager$EmbryoConfigUpdater;
.super Ljava/lang/Object;
.source "EmbryoManager.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/EmbryoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EmbryoConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/EmbryoManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/EmbryoManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/EmbryoManager$EmbryoConfigUpdater;->this$0:Lcom/android/server/am/EmbryoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/EmbryoManager$EmbryoConfigUpdater;->this$0:Lcom/android/server/am/EmbryoManager;

    invoke-virtual {v0, p1}, Lcom/android/server/am/EmbryoManager;->resolveConfig(Lorg/json/JSONArray;)V

    return-void
.end method
