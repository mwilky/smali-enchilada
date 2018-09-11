.class public interface abstract annotation Lcom/android/settings/slices/SliceData$SliceType;
.super Ljava/lang/Object;
.source "SliceData.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/slices/SliceData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "SliceType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final INTENT:I = 0x0

.field public static final SLIDER:I = 0x2

.field public static final SWITCH:I = 0x1
