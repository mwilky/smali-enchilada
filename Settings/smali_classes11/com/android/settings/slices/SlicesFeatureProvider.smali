.class public interface abstract Lcom/android/settings/slices/SlicesFeatureProvider;
.super Ljava/lang/Object;
.source "SlicesFeatureProvider.java"


# static fields
.field public static final DEBUG:Z = false


# virtual methods
.method public abstract getNewWifiCallingSliceHelper(Landroid/content/Context;)Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;
.end method

.method public abstract getSliceDataConverter(Landroid/content/Context;)Lcom/android/settings/slices/SliceDataConverter;
.end method

.method public abstract getSliceIndexer(Landroid/content/Context;)Lcom/android/settings/slices/SlicesIndexer;
.end method

.method public abstract indexSliceData(Landroid/content/Context;)V
.end method

.method public abstract indexSliceDataAsync(Landroid/content/Context;)V
.end method
