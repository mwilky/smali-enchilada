.class final Lcom/android/server/OnePlusPowerController$OnStartTetheringCallback;
.super Landroid/net/ConnectivityManager$OnStartTetheringCallback;
.source "OnePlusPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "OnStartTetheringCallback"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/OnePlusPowerController$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/OnePlusPowerController$OnStartTetheringCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTetheringFailed()V
    .locals 0

    return-void
.end method

.method public onTetheringStarted()V
    .locals 0

    return-void
.end method
