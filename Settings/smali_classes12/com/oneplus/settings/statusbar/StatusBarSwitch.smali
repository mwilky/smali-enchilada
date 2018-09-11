.class public Lcom/oneplus/settings/statusbar/StatusBarSwitch;
.super Landroid/support/v14/preference/SwitchPreference;
.source "StatusBarSwitch.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StatusBarSwitch"


# instance fields
.field private mBlacklist:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUtils:Lcom/oneplus/settings/statusbar/Utils;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 37
    invoke-direct {p0, p1, p2}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance v0, Lcom/oneplus/settings/statusbar/Utils;

    invoke-direct {v0, p1}, Lcom/oneplus/settings/statusbar/Utils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/settings/statusbar/StatusBarSwitch;->mUtils:Lcom/oneplus/settings/statusbar/Utils;

    .line 39
    return-void
.end method

.method private setList(Ljava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 71
    .local p1, "blacklist":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/oneplus/settings/statusbar/StatusBarSwitch;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 72
    .local v0, "contentResolver":Landroid/content/ContentResolver;
    const-string v1, "icon_blacklist"

    const-string v2, ","

    .line 73
    invoke-static {v2, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    .line 72
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 74
    const-string v1, "StatusBarSwitch"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " setList blacklist:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void
.end method

.method private updateList()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/oneplus/settings/statusbar/StatusBarSwitch;->mUtils:Lcom/oneplus/settings/statusbar/Utils;

    const-string v1, "icon_blacklist"

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/statusbar/Utils;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "value":Ljava/lang/String;
    invoke-static {v0}, Lcom/oneplus/settings/statusbar/Utils;->getIconBlacklist(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/statusbar/StatusBarSwitch;->mBlacklist:Ljava/util/Set;

    .line 86
    return-void
.end method

.method private updateUI()V
    .locals 3

    .line 78
    invoke-direct {p0}, Lcom/oneplus/settings/statusbar/StatusBarSwitch;->updateList()V

    .line 79
    iget-object v0, p0, Lcom/oneplus/settings/statusbar/StatusBarSwitch;->mBlacklist:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/oneplus/settings/statusbar/StatusBarSwitch;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/statusbar/StatusBarSwitch;->setChecked(Z)V

    .line 80
    const-string v0, "StatusBarSwitch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " updateUI blacklist:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/settings/statusbar/StatusBarSwitch;->mBlacklist:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void
.end method


# virtual methods
.method public onAttached()V
    .locals 0

    .line 43
    invoke-super {p0}, Landroid/support/v14/preference/SwitchPreference;->onAttached()V

    .line 44
    invoke-direct {p0}, Lcom/oneplus/settings/statusbar/StatusBarSwitch;->updateUI()V

    .line 45
    return-void
.end method

.method public onDetached()V
    .locals 0

    .line 49
    invoke-super {p0}, Landroid/support/v14/preference/SwitchPreference;->onDetached()V

    .line 50
    return-void
.end method

.method protected persistBoolean(Z)Z
    .locals 3
    .param p1, "value"    # Z

    .line 54
    invoke-direct {p0}, Lcom/oneplus/settings/statusbar/StatusBarSwitch;->updateList()V

    .line 55
    const-string v0, "StatusBarSwitch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oneplus/settings/statusbar/StatusBarSwitch;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    if-nez p1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/oneplus/settings/statusbar/StatusBarSwitch;->mBlacklist:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/oneplus/settings/statusbar/StatusBarSwitch;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/oneplus/settings/statusbar/StatusBarSwitch;->mBlacklist:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/oneplus/settings/statusbar/StatusBarSwitch;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lcom/oneplus/settings/statusbar/StatusBarSwitch;->mBlacklist:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/oneplus/settings/statusbar/StatusBarSwitch;->setList(Ljava/util/Set;)V

    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/statusbar/StatusBarSwitch;->mBlacklist:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/oneplus/settings/statusbar/StatusBarSwitch;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 64
    iget-object v0, p0, Lcom/oneplus/settings/statusbar/StatusBarSwitch;->mBlacklist:Ljava/util/Set;

    invoke-direct {p0, v0}, Lcom/oneplus/settings/statusbar/StatusBarSwitch;->setList(Ljava/util/Set;)V

    .line 67
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
