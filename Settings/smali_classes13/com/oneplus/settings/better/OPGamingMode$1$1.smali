.class Lcom/oneplus/settings/better/OPGamingMode$1$1;
.super Ljava/lang/Object;
.source "OPGamingMode.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/better/OPGamingMode$1;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/settings/better/OPGamingMode$1;

.field final synthetic val$model:Lcom/oneplus/settings/better/OPAppModel;

.field final synthetic val$pref:Lcom/oneplus/settings/ui/OPTextViewButtonPreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/better/OPGamingMode$1;Lcom/oneplus/settings/ui/OPTextViewButtonPreference;Lcom/oneplus/settings/better/OPAppModel;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/better/OPGamingMode$1$1;->this$1:Lcom/oneplus/settings/better/OPGamingMode$1;

    iput-object p2, p0, Lcom/oneplus/settings/better/OPGamingMode$1$1;->val$pref:Lcom/oneplus/settings/ui/OPTextViewButtonPreference;

    iput-object p3, p0, Lcom/oneplus/settings/better/OPGamingMode$1$1;->val$model:Lcom/oneplus/settings/better/OPAppModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode$1$1;->val$pref:Lcom/oneplus/settings/ui/OPTextViewButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->setButtonEnable(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode$1$1;->this$1:Lcom/oneplus/settings/better/OPGamingMode$1;

    iget-object v0, v0, Lcom/oneplus/settings/better/OPGamingMode$1;->this$0:Lcom/oneplus/settings/better/OPGamingMode;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPGamingMode;->access$000(Lcom/oneplus/settings/better/OPGamingMode;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPGamingMode$1$1;->val$pref:Lcom/oneplus/settings/ui/OPTextViewButtonPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    iget-object v0, p0, Lcom/oneplus/settings/better/OPGamingMode$1$1;->this$1:Lcom/oneplus/settings/better/OPGamingMode$1;

    iget-object v0, v0, Lcom/oneplus/settings/better/OPGamingMode$1;->this$0:Lcom/oneplus/settings/better/OPGamingMode;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPGamingMode;->access$400(Lcom/oneplus/settings/better/OPGamingMode;)Landroid/app/AppOpsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPGamingMode$1$1;->val$model:Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {v1}, Lcom/oneplus/settings/better/OPAppModel;->getUid()I

    move-result v1

    iget-object v2, p0, Lcom/oneplus/settings/better/OPGamingMode$1$1;->val$model:Lcom/oneplus/settings/better/OPAppModel;

    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x44

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/settings/better/OPGamingMode$1$1;->this$1:Lcom/oneplus/settings/better/OPGamingMode$1;

    iget-object v1, v1, Lcom/oneplus/settings/better/OPGamingMode$1;->this$0:Lcom/oneplus/settings/better/OPGamingMode;

    invoke-static {v1}, Lcom/oneplus/settings/better/OPGamingMode;->access$300(Lcom/oneplus/settings/better/OPGamingMode;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->getGameModeAppListString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPGamingMode$1$1;->this$1:Lcom/oneplus/settings/better/OPGamingMode$1;

    iget-object v1, v1, Lcom/oneplus/settings/better/OPGamingMode$1;->this$0:Lcom/oneplus/settings/better/OPGamingMode;

    invoke-static {v1}, Lcom/oneplus/settings/better/OPGamingMode;->access$300(Lcom/oneplus/settings/better/OPGamingMode;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/better/OPGamingMode$1$1;->val$model:Lcom/oneplus/settings/better/OPAppModel;

    invoke-static {v1, v2}, Lcom/oneplus/settings/utils/OPUtils;->isInRemovedGameAppListString(Landroid/content/Context;Lcom/oneplus/settings/better/OPAppModel;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPGamingMode$1$1;->val$model:Lcom/oneplus/settings/better/OPAppModel;

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->getGameModeAppString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/settings/better/OPGamingMode$1$1;->this$1:Lcom/oneplus/settings/better/OPGamingMode$1;

    iget-object v2, v2, Lcom/oneplus/settings/better/OPGamingMode$1;->this$0:Lcom/oneplus/settings/better/OPGamingMode;

    invoke-static {v2}, Lcom/oneplus/settings/better/OPGamingMode;->access$300(Lcom/oneplus/settings/better/OPGamingMode;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/settings/utils/OPUtils;->saveGameModeRemovedAppLisStrings(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForGameModeRemovedApps()V

    :cond_0
    return-void
.end method
