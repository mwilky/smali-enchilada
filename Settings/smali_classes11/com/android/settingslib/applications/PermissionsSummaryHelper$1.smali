.class Lcom/android/settingslib/applications/PermissionsSummaryHelper$1;
.super Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;
.source "PermissionsSummaryHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/applications/PermissionsSummaryHelper;->getPermissionSummary(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;


# direct methods
.method constructor <init>(Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/android/settingslib/applications/PermissionsSummaryHelper$1;->val$callback:Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    invoke-direct {p0}, Landroid/content/pm/permission/RuntimePermissionPresenter$OnResultCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetAppPermissions(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/permission/RuntimePermissionPresentationInfo;",
            ">;)V"
        }
    .end annotation

    .line 38
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/permission/RuntimePermissionPresentationInfo;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 40
    .local v0, "permissionCount":I
    const/4 v1, 0x0

    .line 41
    .local v1, "grantedStandardCount":I
    const/4 v2, 0x0

    .line 42
    .local v2, "grantedAdditionalCount":I
    const/4 v3, 0x0

    .line 43
    .local v3, "requestedCount":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .local v4, "grantedStandardLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    const/4 v5, 0x0

    move v6, v2

    move v2, v1

    move v1, v5

    .local v1, "i":I
    .local v2, "grantedStandardCount":I
    .local v6, "grantedAdditionalCount":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 46
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/permission/RuntimePermissionPresentationInfo;

    .line 47
    .local v7, "permission":Landroid/content/pm/permission/RuntimePermissionPresentationInfo;
    add-int/lit8 v3, v3, 0x1

    .line 48
    invoke-virtual {v7}, Landroid/content/pm/permission/RuntimePermissionPresentationInfo;->isGranted()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 49
    invoke-virtual {v7}, Landroid/content/pm/permission/RuntimePermissionPresentationInfo;->isStandard()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 50
    invoke-virtual {v7}, Landroid/content/pm/permission/RuntimePermissionPresentationInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 53
    :cond_0
    add-int/lit8 v6, v6, 0x1

    .line 45
    .end local v7    # "permission":Landroid/content/pm/permission/RuntimePermissionPresentationInfo;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    .end local v1    # "i":I
    :cond_2
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v1

    .line 59
    .local v1, "collator":Ljava/text/Collator;
    invoke-virtual {v1, v5}, Ljava/text/Collator;->setStrength(I)V

    .line 60
    invoke-static {v4, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 62
    iget-object v5, p0, Lcom/android/settingslib/applications/PermissionsSummaryHelper$1;->val$callback:Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    invoke-virtual {v5, v2, v3, v6, v4}, Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;->onPermissionSummaryResult(IIILjava/util/List;)V

    .line 64
    return-void
.end method
