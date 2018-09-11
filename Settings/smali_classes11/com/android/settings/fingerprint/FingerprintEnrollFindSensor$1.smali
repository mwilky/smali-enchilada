.class Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor$1;
.super Ljava/lang/Object;
.source "FingerprintEnrollFindSensor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    .line 82
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 87
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.oem.intent.action.OP_LEGAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 88
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "op_legal_notices_type"

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    const-string v1, "key_from_settings"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 90
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor$1;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    invoke-virtual {v1, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->startActivity(Landroid/content/Intent;)V

    .line 91
    return-void
.end method
