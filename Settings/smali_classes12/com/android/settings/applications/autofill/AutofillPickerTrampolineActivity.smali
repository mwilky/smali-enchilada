.class public Lcom/android/settings/applications/autofill/AutofillPickerTrampolineActivity;
.super Landroid/app/Activity;
.source "AutofillPickerTrampolineActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/autofill/AutofillPickerTrampolineActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->getDefaultKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/applications/autofill/AutofillPickerTrampolineActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/applications/autofill/AutofillPickerTrampolineActivity;->finish()V

    return-void

    :cond_0
    const-class v3, Landroid/view/autofill/AutofillManager;

    invoke-virtual {p0, v3}, Lcom/android/settings/applications/autofill/AutofillPickerTrampolineActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/autofill/AutofillManager;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/autofill/AutofillManager;->hasAutofillFeature()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/view/autofill/AutofillManager;->isAutofillSupported()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/android/settings/applications/autofill/AutofillPickerActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v5, 0x2000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/settings/applications/autofill/AutofillPickerTrampolineActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/autofill/AutofillPickerTrampolineActivity;->finish()V

    return-void

    :cond_2
    :goto_0
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/settings/applications/autofill/AutofillPickerTrampolineActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/applications/autofill/AutofillPickerTrampolineActivity;->finish()V

    return-void
.end method
