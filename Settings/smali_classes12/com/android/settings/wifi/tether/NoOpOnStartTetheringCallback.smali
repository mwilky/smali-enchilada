.class Lcom/android/settings/wifi/tether/NoOpOnStartTetheringCallback;
.super Ljava/lang/Object;
.source "NoOpOnStartTetheringCallback.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance()Landroid/net/ConnectivityManager$OnStartTetheringCallback;
    .locals 1

    new-instance v0, Lcom/android/settings/wifi/tether/NoOpOnStartTetheringCallback$1;

    invoke-direct {v0}, Lcom/android/settings/wifi/tether/NoOpOnStartTetheringCallback$1;-><init>()V

    return-object v0
.end method
