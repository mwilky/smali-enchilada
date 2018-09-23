.class Lcom/android/server/pm/OemCompatibilityHelper$CompatConfigUpdater;
.super Ljava/lang/Object;
.source "OemCompatibilityHelper.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/OemCompatibilityHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CompatConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/OemCompatibilityHelper;


# direct methods
.method constructor <init>(Lcom/android/server/pm/OemCompatibilityHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/OemCompatibilityHelper$CompatConfigUpdater;->this$0:Lcom/android/server/pm/OemCompatibilityHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/OemCompatibilityHelper$CompatConfigUpdater;->this$0:Lcom/android/server/pm/OemCompatibilityHelper;

    invoke-static {v0, p1}, Lcom/android/server/pm/OemCompatibilityHelper;->access$000(Lcom/android/server/pm/OemCompatibilityHelper;Lorg/json/JSONArray;)V

    return-void
.end method
