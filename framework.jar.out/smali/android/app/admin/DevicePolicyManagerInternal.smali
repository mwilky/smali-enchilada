.class public abstract Landroid/app/admin/DevicePolicyManagerInternal;
.super Ljava/lang/Object;
.source "DevicePolicyManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addOnCrossProfileWidgetProvidersChangeListener(Landroid/app/admin/DevicePolicyManagerInternal$OnCrossProfileWidgetProvidersChangeListener;)V
.end method

.method public abstract canUserHaveUntrustedCredentialReset(I)Z
.end method

.method public abstract createShowAdminSupportIntent(IZ)Landroid/content/Intent;
.end method

.method public abstract createUserRestrictionSupportIntent(ILjava/lang/String;)Landroid/content/Intent;
.end method

.method public abstract getCrossProfileWidgetProviders(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract getDevicePolicyCache()Landroid/app/admin/DevicePolicyCache;
.end method

.method public abstract getPrintingDisabledReasonForUser(I)Ljava/lang/CharSequence;
.end method

.method public abstract isActiveAdminWithPolicy(II)Z
.end method

.method public abstract isUserAffiliatedWithDevice(I)Z
.end method

.method public abstract reportSeparateProfileChallengeChanged(I)V
.end method
