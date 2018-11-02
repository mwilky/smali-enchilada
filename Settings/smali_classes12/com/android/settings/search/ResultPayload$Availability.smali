.class public interface abstract annotation Lcom/android/settings/search/ResultPayload$Availability;
.super Ljava/lang/Object;
.source "ResultPayload.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search/ResultPayload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "Availability"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final AVAILABLE:I = 0x0

.field public static final DISABLED_DEPENDENT_APP:I = 0x4

.field public static final DISABLED_DEPENDENT_SETTING:I = 0x1

.field public static final DISABLED_FOR_USER:I = 0x6

.field public static final DISABLED_UNSUPPORTED:I = 0x2

.field public static final INTENT_ONLY:I = 0x5

.field public static final RESOURCE_CONTENTION:I = 0x3
