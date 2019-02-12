.class Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController$loadAggregatedUsageEventsTask;
.super Landroid/os/AsyncTask;
.source "RecentNotifyingAppsPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "loadAggregatedUsageEventsTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;


# direct methods
.method private constructor <init>(Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController$loadAggregatedUsageEventsTask;->this$0:Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController$loadAggregatedUsageEventsTask;-><init>(Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController$loadAggregatedUsageEventsTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController$loadAggregatedUsageEventsTask;->this$0:Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;

    iget-object v1, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController$loadAggregatedUsageEventsTask;->this$0:Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->getAggregatedUsageEvents()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->access$102(Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;Ljava/util/Map;)Ljava/util/Map;

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController$loadAggregatedUsageEventsTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController$loadAggregatedUsageEventsTask;->this$0:Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;

    iget-object v1, p0, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController$loadAggregatedUsageEventsTask;->this$0:Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;

    invoke-static {v1}, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->access$200(Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/RecentNotifyingAppsPreferenceController;->refreshUi(Landroid/content/Context;)V

    return-void
.end method
