.class public Lcom/oneplus/settings/OPScreenColorModeForSetupWizard;
.super Landroid/app/Activity;
.source "OPScreenColorModeForSetupWizard.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d01ae

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPScreenColorModeForSetupWizard;->setContentView(I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/OPScreenColorModeForSetupWizard;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const v1, 0x7f0a035a

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/OPScreenColorModeForSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    new-instance v2, Lcom/oneplus/settings/OPScreenColorModeForSetupWizard$1;

    invoke-direct {v2, p0, v0}, Lcom/oneplus/settings/OPScreenColorModeForSetupWizard$1;-><init>(Lcom/oneplus/settings/OPScreenColorModeForSetupWizard;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
