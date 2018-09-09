.class Lcom/android/server/AlarmManagerService$Alignment$AlignmentConfigUpdater;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService$Alignment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlignmentConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/AlarmManagerService$Alignment;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerService$Alignment;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/AlarmManagerService$Alignment;

    .line 536
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$Alignment$AlignmentConfigUpdater;->this$1:Lcom/android/server/AlarmManagerService$Alignment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 1
    .param p1, "configJSONArray"    # Lorg/json/JSONArray;

    .line 540
    iget-object v0, p0, Lcom/android/server/AlarmManagerService$Alignment$AlignmentConfigUpdater;->this$1:Lcom/android/server/AlarmManagerService$Alignment;

    invoke-virtual {v0, p1}, Lcom/android/server/AlarmManagerService$Alignment;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    .line 541
    return-void
.end method
