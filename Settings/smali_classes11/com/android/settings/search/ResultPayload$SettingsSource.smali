.class public interface abstract annotation Lcom/android/settings/search/ResultPayload$SettingsSource;
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
    name = "SettingsSource"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final GLOBAL:I = 0x3

.field public static final SECURE:I = 0x2

.field public static final SYSTEM:I = 0x1

.field public static final UNKNOWN:I
