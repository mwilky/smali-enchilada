.class Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter$2;
.super Ljava/lang/Object;
.source "PrintServiceSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

.field final synthetic val$printer:Landroid/print/PrinterInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;Landroid/print/PrinterInfo;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    .line 575
    iput-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter$2;->this$1:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    iput-object p2, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter$2;->val$printer:Landroid/print/PrinterInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .line 579
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter$2;->this$1:Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    iget-object v0, v0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter$2;->val$printer:Landroid/print/PrinterInfo;

    .line 580
    invoke-virtual {v0}, Landroid/print/PrinterInfo;->getInfoIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 579
    invoke-virtual/range {v1 .. v6}, Landroid/app/Activity;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    goto :goto_0

    .line 581
    :catch_0
    move-exception v0

    .line 582
    .local v0, "e":Landroid/content/IntentSender$SendIntentException;
    const-string v1, "PrintServiceSettingsFragment"

    const-string v2, "Could not execute pending info intent: %s"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 584
    .end local v0    # "e":Landroid/content/IntentSender$SendIntentException;
    :goto_0
    return-void
.end method
