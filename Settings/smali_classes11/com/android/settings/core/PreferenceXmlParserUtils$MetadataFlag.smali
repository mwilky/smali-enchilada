.class public interface abstract annotation Lcom/android/settings/core/PreferenceXmlParserUtils$MetadataFlag;
.super Ljava/lang/Object;
.source "PreferenceXmlParserUtils.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/core/PreferenceXmlParserUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "MetadataFlag"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final FLAG_INCLUDE_PREF_SCREEN:I = 0x1

.field public static final FLAG_NEED_KEY:I = 0x2

.field public static final FLAG_NEED_KEYWORDS:I = 0x100

.field public static final FLAG_NEED_PLATFORM_SLICE_FLAG:I = 0x80

.field public static final FLAG_NEED_PREF_CONTROLLER:I = 0x8

.field public static final FLAG_NEED_PREF_ICON:I = 0x40

.field public static final FLAG_NEED_PREF_SUMMARY:I = 0x20

.field public static final FLAG_NEED_PREF_TITLE:I = 0x10

.field public static final FLAG_NEED_PREF_TYPE:I = 0x4
