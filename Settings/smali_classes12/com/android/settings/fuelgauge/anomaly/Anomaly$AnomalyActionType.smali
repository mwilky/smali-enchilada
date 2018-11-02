.class public interface abstract annotation Lcom/android/settings/fuelgauge/anomaly/Anomaly$AnomalyActionType;
.super Ljava/lang/Object;
.source "Anomaly.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/anomaly/Anomaly;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "AnomalyActionType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final BACKGROUND_CHECK:I = 0x1

.field public static final FORCE_STOP:I = 0x0

.field public static final LOCATION_CHECK:I = 0x2

.field public static final STOP_AND_BACKGROUND_CHECK:I = 0x3
