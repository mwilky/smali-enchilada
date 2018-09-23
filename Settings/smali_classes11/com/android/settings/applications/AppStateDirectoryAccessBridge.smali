.class public Lcom/android/settings/applications/AppStateDirectoryAccessBridge;
.super Lcom/android/settings/applications/AppStateBaseBridge;
.source "AppStateDirectoryAccessBridge.java"


# static fields
.field static final DEBUG:Z = true

.field public static final FILTER_APP_HAS_DIRECTORY_ACCESS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field private static final TAG:Ljava/lang/String; = "DirectoryAccessBridge"

.field static final VERBOSE:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/applications/AppStateDirectoryAccessBridge$1;

    invoke-direct {v0}, Lcom/android/settings/applications/AppStateDirectoryAccessBridge$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppStateDirectoryAccessBridge;->FILTER_APP_HAS_DIRECTORY_ACCESS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    return-void
.end method

.method public constructor <init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/AppStateBaseBridge;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    return-void
.end method


# virtual methods
.method protected loadAllExtraInfo()V
    .locals 0

    return-void
.end method

.method protected updateExtraInfo(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method
