.class Lcom/oneplus/settings/better/OPAppLocker$1;
.super Landroid/os/Handler;
.source "OPAppLocker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/better/OPAppLocker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/better/OPAppLocker;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/better/OPAppLocker;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/better/OPAppLocker$1;->this$0:Lcom/oneplus/settings/better/OPAppLocker;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker$1;->this$0:Lcom/oneplus/settings/better/OPAppLocker;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPAppLocker;->access$000(Lcom/oneplus/settings/better/OPAppLocker;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker$1;->this$0:Lcom/oneplus/settings/better/OPAppLocker;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPAppLocker;->access$100(Lcom/oneplus/settings/better/OPAppLocker;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker$1;->this$0:Lcom/oneplus/settings/better/OPAppLocker;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPAppLocker;->access$100(Lcom/oneplus/settings/better/OPAppLocker;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPAppLocker$1;->this$0:Lcom/oneplus/settings/better/OPAppLocker;

    invoke-static {v1}, Lcom/oneplus/settings/better/OPAppLocker;->access$200(Lcom/oneplus/settings/better/OPAppLocker;)Lcom/oneplus/settings/apploader/OPApplicationLoader;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/apploader/OPApplicationLoader;->getAppListByType(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/oneplus/settings/better/OPAppLocker$1;->this$0:Lcom/oneplus/settings/better/OPAppLocker;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPAppLocker;->access$100(Lcom/oneplus/settings/better/OPAppLocker;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/oneplus/settings/better/OPAppLocker$1;->this$0:Lcom/oneplus/settings/better/OPAppLocker;

    invoke-static {v2}, Lcom/oneplus/settings/better/OPAppLocker;->access$100(Lcom/oneplus/settings/better/OPAppLocker;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/better/OPAppModel;

    new-instance v3, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;

    iget-object v4, p0, Lcom/oneplus/settings/better/OPAppLocker$1;->this$0:Lcom/oneplus/settings/better/OPAppLocker;

    invoke-static {v4}, Lcom/oneplus/settings/better/OPAppLocker;->access$300(Lcom/oneplus/settings/better/OPAppLocker;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->getAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->setButtonEnable(Z)V

    iget-object v4, p0, Lcom/oneplus/settings/better/OPAppLocker$1;->this$0:Lcom/oneplus/settings/better/OPAppLocker;

    invoke-static {v4}, Lcom/oneplus/settings/better/OPAppLocker;->access$300(Lcom/oneplus/settings/better/OPAppLocker;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f12118c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->setButtonString(Ljava/lang/String;)V

    new-instance v4, Lcom/oneplus/settings/better/OPAppLocker$1$1;

    invoke-direct {v4, p0, v3, v2}, Lcom/oneplus/settings/better/OPAppLocker$1$1;-><init>(Lcom/oneplus/settings/better/OPAppLocker$1;Lcom/oneplus/settings/ui/OPTextViewButtonPreference;Lcom/oneplus/settings/better/OPAppModel;)V

    invoke-virtual {v3, v4}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->setOnButtonClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/oneplus/settings/better/OPAppLocker$1;->this$0:Lcom/oneplus/settings/better/OPAppLocker;

    invoke-static {v4}, Lcom/oneplus/settings/better/OPAppLocker;->access$000(Lcom/oneplus/settings/better/OPAppLocker;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
