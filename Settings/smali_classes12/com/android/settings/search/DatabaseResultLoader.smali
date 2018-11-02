.class public Lcom/android/settings/search/DatabaseResultLoader;
.super Ljava/lang/Object;
.source "DatabaseResultLoader.java"


# static fields
.field public static final COLUMN_INDEX_ID:I = 0x0

.field public static final COLUMN_INDEX_INTENT_ACTION_TARGET_PACKAGE:I = 0x8

.field public static final COLUMN_INDEX_KEY:I = 0xa

.field public static final SELECT_COLUMNS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "DatabaseResultLoader"


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const-string v0, "docid"

    const-string v1, "data_title"

    const-string v2, "data_summary_on"

    const-string v3, "data_summary_off"

    const-string v4, "class_name"

    const-string v5, "screen_title"

    const-string v6, "icon"

    const-string v7, "intent_action"

    const-string v8, "intent_target_package"

    const-string v9, "intent_target_class"

    const-string v10, "data_key_reference"

    const-string v11, "payload_type"

    const-string v12, "payload"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/search/DatabaseResultLoader;->SELECT_COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
