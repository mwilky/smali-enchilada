.class Lcom/oneplus/settings/OPSecurityDetectionActivity$1;
.super Landroid/text/style/ClickableSpan;
.source "OPSecurityDetectionActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/OPSecurityDetectionActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPSecurityDetectionActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPSecurityDetectionActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/OPSecurityDetectionActivity$1;->this$0:Lcom/oneplus/settings/OPSecurityDetectionActivity;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/OPSecurityDetectionActivity$1;->this$0:Lcom/oneplus/settings/OPSecurityDetectionActivity;

    invoke-static {v0}, Lcom/oneplus/settings/OPSecurityDetectionActivity;->access$000(Lcom/oneplus/settings/OPSecurityDetectionActivity;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xb

    invoke-static {v0, v1}, Lcom/android/settings/LegalSettings;->startLegalActivity(Landroid/content/Context;I)V

    return-void
.end method
