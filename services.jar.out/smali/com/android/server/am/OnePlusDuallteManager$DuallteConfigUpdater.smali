.class Lcom/android/server/am/OnePlusDuallteManager$DuallteConfigUpdater;
.super Ljava/lang/Object;
.source "OnePlusDuallteManager.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusDuallteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DuallteConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusDuallteManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusDuallteManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusDuallteManager$DuallteConfigUpdater;->this$0:Lcom/android/server/am/OnePlusDuallteManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager$DuallteConfigUpdater;->this$0:Lcom/android/server/am/OnePlusDuallteManager;

    invoke-static {v0, p1}, Lcom/android/server/am/OnePlusDuallteManager;->access$300(Lcom/android/server/am/OnePlusDuallteManager;Lorg/json/JSONArray;)V

    return-void
.end method
