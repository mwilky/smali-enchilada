.class public Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$LoaderCreator;
.super Ljava/lang/Object;
.source "TimeZoneDataLoader.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoaderCreator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Lcom/android/settings/datetime/timezone/model/TimeZoneData;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCallback:Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$OnDataReadyCallback;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$OnDataReadyCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$LoaderCreator;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$LoaderCreator;->mCallback:Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$OnDataReadyCallback;

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2

    new-instance v0, Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader;

    iget-object v1, p0, Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$LoaderCreator;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public onLoadFinished(Landroid/content/Loader;Lcom/android/settings/datetime/timezone/model/TimeZoneData;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/android/settings/datetime/timezone/model/TimeZoneData;",
            ">;",
            "Lcom/android/settings/datetime/timezone/model/TimeZoneData;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$LoaderCreator;->mCallback:Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$OnDataReadyCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$LoaderCreator;->mCallback:Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$OnDataReadyCallback;

    invoke-interface {v0, p2}, Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$OnDataReadyCallback;->onTimeZoneDataReady(Lcom/android/settings/datetime/timezone/model/TimeZoneData;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Lcom/android/settings/datetime/timezone/model/TimeZoneData;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/datetime/timezone/model/TimeZoneDataLoader$LoaderCreator;->onLoadFinished(Landroid/content/Loader;Lcom/android/settings/datetime/timezone/model/TimeZoneData;)V

    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Lcom/android/settings/datetime/timezone/model/TimeZoneData;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
