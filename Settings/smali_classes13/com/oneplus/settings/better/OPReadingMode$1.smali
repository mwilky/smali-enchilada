.class Lcom/oneplus/settings/better/OPReadingMode$1;
.super Landroid/os/Handler;
.source "OPReadingMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/better/OPReadingMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/better/OPReadingMode;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/better/OPReadingMode;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/better/OPReadingMode$1;->this$0:Lcom/oneplus/settings/better/OPReadingMode;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingMode$1;->this$0:Lcom/oneplus/settings/better/OPReadingMode;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPReadingMode;->access$000(Lcom/oneplus/settings/better/OPReadingMode;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingMode$1;->this$0:Lcom/oneplus/settings/better/OPReadingMode;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPReadingMode;->access$100(Lcom/oneplus/settings/better/OPReadingMode;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingMode$1;->this$0:Lcom/oneplus/settings/better/OPReadingMode;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPReadingMode;->access$100(Lcom/oneplus/settings/better/OPReadingMode;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPReadingMode$1;->this$0:Lcom/oneplus/settings/better/OPReadingMode;

    invoke-static {v1}, Lcom/oneplus/settings/better/OPReadingMode;->access$200(Lcom/oneplus/settings/better/OPReadingMode;)Lcom/oneplus/settings/apploader/OPApplicationLoader;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->getAppListByType(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/oneplus/settings/better/OPReadingMode$1;->this$0:Lcom/oneplus/settings/better/OPReadingMode;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPReadingMode;->access$100(Lcom/oneplus/settings/better/OPReadingMode;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/oneplus/settings/better/OPReadingMode$1;->this$0:Lcom/oneplus/settings/better/OPReadingMode;

    invoke-static {v3}, Lcom/oneplus/settings/better/OPReadingMode;->access$100(Lcom/oneplus/settings/better/OPReadingMode;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/better/OPAppModel;

    new-instance v4, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;

    iget-object v5, p0, Lcom/oneplus/settings/better/OPReadingMode$1;->this$0:Lcom/oneplus/settings/better/OPReadingMode;

    invoke-static {v5}, Lcom/oneplus/settings/better/OPReadingMode;->access$300(Lcom/oneplus/settings/better/OPReadingMode;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Lcom/oneplus/settings/better/OPAppModel;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3}, Lcom/oneplus/settings/better/OPAppModel;->getLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->setButtonEnable(Z)V

    iget-object v5, p0, Lcom/oneplus/settings/better/OPReadingMode$1;->this$0:Lcom/oneplus/settings/better/OPReadingMode;

    invoke-static {v5}, Lcom/oneplus/settings/better/OPReadingMode;->access$300(Lcom/oneplus/settings/better/OPReadingMode;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f12118c

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->setButtonString(Ljava/lang/String;)V

    new-instance v5, Lcom/oneplus/settings/better/OPReadingMode$1$1;

    invoke-direct {v5, p0, v4, v3}, Lcom/oneplus/settings/better/OPReadingMode$1$1;-><init>(Lcom/oneplus/settings/better/OPReadingMode$1;Lcom/oneplus/settings/ui/OPTextViewButtonPreference;Lcom/oneplus/settings/better/OPAppModel;)V

    invoke-virtual {v4, v5}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->setOnButtonClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/oneplus/settings/better/OPReadingMode$1;->this$0:Lcom/oneplus/settings/better/OPReadingMode;

    invoke-static {v5}, Lcom/oneplus/settings/better/OPReadingMode;->access$000(Lcom/oneplus/settings/better/OPReadingMode;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ";"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/oneplus/settings/better/OPReadingMode$1;->this$0:Lcom/oneplus/settings/better/OPReadingMode;

    invoke-static {v2}, Lcom/oneplus/settings/better/OPReadingMode;->access$500(Lcom/oneplus/settings/better/OPReadingMode;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "read_mode_apps"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForReadingModeApps(Ljava/lang/String;)V

    return-void
.end method
