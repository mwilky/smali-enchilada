.class Lcom/oneplus/settings/OPStatusBarCustomizeIconSettings$StatusBarCustomizeIndexProvider;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "OPStatusBarCustomizeIconSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/OPStatusBarCustomizeIconSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StatusBarCustomizeIndexProvider"
.end annotation


# instance fields
.field mIsPrimary:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    .line 70
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/settings/OPStatusBarCustomizeIconSettings$StatusBarCustomizeIndexProvider;->mIsPrimary:Z

    .line 71
    return-void
.end method


# virtual methods
.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "enabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 78
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Landroid/provider/SearchIndexableResource;>;"
    iget-boolean v1, p0, Lcom/oneplus/settings/OPStatusBarCustomizeIconSettings$StatusBarCustomizeIndexProvider;->mIsPrimary:Z

    if-nez v1, :cond_0

    .line 79
    return-object v0

    .line 82
    :cond_0
    new-instance v1, Landroid/provider/SearchIndexableResource;

    invoke-direct {v1, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 83
    .local v1, "sir":Landroid/provider/SearchIndexableResource;
    const v2, 0x7f160094

    iput v2, v1, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 84
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    return-object v0
.end method
