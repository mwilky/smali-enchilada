.class Landroid/support/v4/media/MediaBrowserCompatApi26;
.super Ljava/lang/Object;
.source "MediaBrowserCompatApi26.java"


# annotations
.annotation build Landroid/support/annotation/RequiresApi;
    value = 0x1a
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/MediaBrowserCompatApi26$SubscriptionCallbackProxy;,
        Landroid/support/v4/media/MediaBrowserCompatApi26$SubscriptionCallback;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createSubscriptionCallback(Landroid/support/v4/media/MediaBrowserCompatApi26$SubscriptionCallback;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/support/v4/media/MediaBrowserCompatApi26$SubscriptionCallbackProxy;

    invoke-direct {v0, p0}, Landroid/support/v4/media/MediaBrowserCompatApi26$SubscriptionCallbackProxy;-><init>(Landroid/support/v4/media/MediaBrowserCompatApi26$SubscriptionCallback;)V

    return-object v0
.end method

.method public static subscribe(Ljava/lang/Object;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V
    .locals 2

    move-object v0, p0

    check-cast v0, Landroid/media/browse/MediaBrowser;

    move-object v1, p3

    check-cast v1, Landroid/media/browse/MediaBrowser$SubscriptionCallback;

    invoke-virtual {v0, p1, p2, v1}, Landroid/media/browse/MediaBrowser;->subscribe(Ljava/lang/String;Landroid/os/Bundle;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V

    return-void
.end method

.method public static unsubscribe(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    move-object v0, p0

    check-cast v0, Landroid/media/browse/MediaBrowser;

    move-object v1, p2

    check-cast v1, Landroid/media/browse/MediaBrowser$SubscriptionCallback;

    invoke-virtual {v0, p1, v1}, Landroid/media/browse/MediaBrowser;->unsubscribe(Ljava/lang/String;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V

    return-void
.end method
