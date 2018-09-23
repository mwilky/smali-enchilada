.class Lcom/android/server/am/OnePlusAppBootManager$AppBootConfigUpdater;
.super Ljava/lang/Object;
.source "OnePlusAppBootManager.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusAppBootManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppBootConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusAppBootManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusAppBootManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusAppBootManager$AppBootConfigUpdater;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$AppBootConfigUpdater;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-static {v0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->access$2000(Lcom/android/server/am/OnePlusAppBootManager;Lorg/json/JSONArray;)V

    return-void
.end method
