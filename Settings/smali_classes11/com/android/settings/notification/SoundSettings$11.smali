.class Lcom/android/settings/notification/SoundSettings$11;
.super Ljava/lang/Object;
.source "SoundSettings.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/SoundSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 929
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createSummaryProvider(Landroid/app/Activity;Lcom/android/settings/dashboard/SummaryLoader;)Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "summaryLoader"    # Lcom/android/settings/dashboard/SummaryLoader;

    .line 933
    new-instance v0, Lcom/android/settings/notification/SoundSettings$SummaryProvider;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/notification/SoundSettings$SummaryProvider;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V

    return-object v0
.end method
