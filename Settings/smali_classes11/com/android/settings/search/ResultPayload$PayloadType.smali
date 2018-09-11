.class public interface abstract annotation Lcom/android/settings/search/ResultPayload$PayloadType;
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
    name = "PayloadType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final INLINE_LIST:I = 0x3

.field public static final INLINE_SLIDER:I = 0x1

.field public static final INLINE_SWITCH:I = 0x2

.field public static final INTENT:I = 0x0

.field public static final SAVED_QUERY:I = 0x4
