.class Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController$1;
.super Ljava/lang/Object;
.source "RecentLocationRequestSeeAllPreferenceController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->createAppPreference(Landroid/content/Context;Lcom/android/settingslib/location/RecentLocationApps$Request;Ljava/util/List;)Landroid/support/v7/preference/Preference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;

.field final synthetic val$appEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

.field final synthetic val$pref:Lcom/oneplus/settings/ui/OPButtonPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Lcom/oneplus/settings/ui/OPButtonPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController$1;->this$0:Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;

    iput-object p2, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController$1;->val$appEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iput-object p3, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController$1;->val$pref:Lcom/oneplus/settings/ui/OPButtonPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController$1;->this$0:Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;

    iget-object v1, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController$1;->val$appEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController$1;->val$pref:Lcom/oneplus/settings/ui/OPButtonPreference;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController;->forceStopPackage(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Lcom/oneplus/settings/ui/OPButtonPreference;)V

    iget-object v0, p0, Lcom/android/settings/location/RecentLocationRequestSeeAllPreferenceController$1;->val$pref:Lcom/oneplus/settings/ui/OPButtonPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPButtonPreference;->setButtonEnable(Z)V

    return-void
.end method
