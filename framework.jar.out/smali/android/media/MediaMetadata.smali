.class public final Landroid/media/MediaMetadata;
.super Ljava/lang/Object;
.source "MediaMetadata.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaMetadata$Builder;,
        Landroid/media/MediaMetadata$RatingKey;,
        Landroid/media/MediaMetadata$BitmapKey;,
        Landroid/media/MediaMetadata$LongKey;,
        Landroid/media/MediaMetadata$TextKey;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/media/MediaMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private static final EDITOR_KEY_MAPPING:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final METADATA_KEYS_TYPE:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final METADATA_KEY_ALBUM:Ljava/lang/String; = "android.media.metadata.ALBUM"

.field public static final METADATA_KEY_ALBUM_ART:Ljava/lang/String; = "android.media.metadata.ALBUM_ART"

.field public static final METADATA_KEY_ALBUM_ARTIST:Ljava/lang/String; = "android.media.metadata.ALBUM_ARTIST"

.field public static final METADATA_KEY_ALBUM_ART_URI:Ljava/lang/String; = "android.media.metadata.ALBUM_ART_URI"

.field public static final METADATA_KEY_ART:Ljava/lang/String; = "android.media.metadata.ART"

.field public static final METADATA_KEY_ARTIST:Ljava/lang/String; = "android.media.metadata.ARTIST"

.field public static final METADATA_KEY_ART_URI:Ljava/lang/String; = "android.media.metadata.ART_URI"

.field public static final METADATA_KEY_AUTHOR:Ljava/lang/String; = "android.media.metadata.AUTHOR"

.field public static final METADATA_KEY_BT_FOLDER_TYPE:Ljava/lang/String; = "android.media.metadata.BT_FOLDER_TYPE"

.field public static final METADATA_KEY_COMPILATION:Ljava/lang/String; = "android.media.metadata.COMPILATION"

.field public static final METADATA_KEY_COMPOSER:Ljava/lang/String; = "android.media.metadata.COMPOSER"

.field public static final METADATA_KEY_DATE:Ljava/lang/String; = "android.media.metadata.DATE"

.field public static final METADATA_KEY_DISC_NUMBER:Ljava/lang/String; = "android.media.metadata.DISC_NUMBER"

.field public static final METADATA_KEY_DISPLAY_DESCRIPTION:Ljava/lang/String; = "android.media.metadata.DISPLAY_DESCRIPTION"

.field public static final METADATA_KEY_DISPLAY_ICON:Ljava/lang/String; = "android.media.metadata.DISPLAY_ICON"

.field public static final METADATA_KEY_DISPLAY_ICON_URI:Ljava/lang/String; = "android.media.metadata.DISPLAY_ICON_URI"

.field public static final METADATA_KEY_DISPLAY_SUBTITLE:Ljava/lang/String; = "android.media.metadata.DISPLAY_SUBTITLE"

.field public static final METADATA_KEY_DISPLAY_TITLE:Ljava/lang/String; = "android.media.metadata.DISPLAY_TITLE"

.field public static final METADATA_KEY_DURATION:Ljava/lang/String; = "android.media.metadata.DURATION"

.field public static final METADATA_KEY_GENRE:Ljava/lang/String; = "android.media.metadata.GENRE"

.field public static final METADATA_KEY_MEDIA_ID:Ljava/lang/String; = "android.media.metadata.MEDIA_ID"

.field public static final METADATA_KEY_MEDIA_URI:Ljava/lang/String; = "android.media.metadata.MEDIA_URI"

.field public static final METADATA_KEY_NUM_TRACKS:Ljava/lang/String; = "android.media.metadata.NUM_TRACKS"

.field public static final METADATA_KEY_RATING:Ljava/lang/String; = "android.media.metadata.RATING"

.field public static final METADATA_KEY_TITLE:Ljava/lang/String; = "android.media.metadata.TITLE"

.field public static final METADATA_KEY_TRACK_NUMBER:Ljava/lang/String; = "android.media.metadata.TRACK_NUMBER"

.field public static final METADATA_KEY_USER_RATING:Ljava/lang/String; = "android.media.metadata.USER_RATING"

.field public static final METADATA_KEY_WRITER:Ljava/lang/String; = "android.media.metadata.WRITER"

.field public static final METADATA_KEY_YEAR:Ljava/lang/String; = "android.media.metadata.YEAR"

.field private static final METADATA_TYPE_BITMAP:I = 0x2

.field private static final METADATA_TYPE_INVALID:I = -0x1

.field private static final METADATA_TYPE_LONG:I = 0x0

.field private static final METADATA_TYPE_RATING:I = 0x3

.field private static final METADATA_TYPE_TEXT:I = 0x1

.field private static final PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

.field private static final PREFERRED_DESCRIPTION_ORDER:[Ljava/lang/String;

.field private static final PREFERRED_URI_ORDER:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "MediaMetadata"


# instance fields
.field private final mBundle:Landroid/os/Bundle;

.field private mDescription:Landroid/media/MediaDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "android.media.metadata.TITLE"

    const-string v1, "android.media.metadata.ARTIST"

    const-string v2, "android.media.metadata.ALBUM"

    const-string v3, "android.media.metadata.ALBUM_ARTIST"

    const-string v4, "android.media.metadata.WRITER"

    const-string v5, "android.media.metadata.AUTHOR"

    const-string v6, "android.media.metadata.COMPOSER"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MediaMetadata;->PREFERRED_DESCRIPTION_ORDER:[Ljava/lang/String;

    const-string v0, "android.media.metadata.DISPLAY_ICON"

    const-string v1, "android.media.metadata.ART"

    const-string v2, "android.media.metadata.ALBUM_ART"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MediaMetadata;->PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

    const-string v0, "android.media.metadata.DISPLAY_ICON_URI"

    const-string v1, "android.media.metadata.ART_URI"

    const-string v2, "android.media.metadata.ALBUM_ART_URI"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/media/MediaMetadata;->PREFERRED_URI_ORDER:[Ljava/lang/String;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.TITLE"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.ARTIST"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.DURATION"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.ALBUM"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.AUTHOR"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.WRITER"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.COMPOSER"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.COMPILATION"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.DATE"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.YEAR"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.GENRE"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.TRACK_NUMBER"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.NUM_TRACKS"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.DISC_NUMBER"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.ALBUM_ARTIST"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.ART"

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.ART_URI"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.ALBUM_ART"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.ALBUM_ART_URI"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v1, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.USER_RATING"

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.RATING"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.DISPLAY_TITLE"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.DISPLAY_SUBTITLE"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.DISPLAY_DESCRIPTION"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.DISPLAY_ICON"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.DISPLAY_ICON_URI"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.BT_FOLDER_TYPE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.MEDIA_ID"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    const-string v1, "android.media.metadata.MEDIA_URI"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const-string v1, "android.media.metadata.ART"

    const/16 v6, 0x64

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const-string v1, "android.media.metadata.RATING"

    const/16 v6, 0x65

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const-string v1, "android.media.metadata.USER_RATING"

    const v6, 0x10000001

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const-string v1, "android.media.metadata.ALBUM"

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const-string v1, "android.media.metadata.ALBUM_ARTIST"

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const-string v1, "android.media.metadata.ARTIST"

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const-string v1, "android.media.metadata.AUTHOR"

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const-string v1, "android.media.metadata.TRACK_NUMBER"

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const-string v1, "android.media.metadata.COMPOSER"

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const-string v1, "android.media.metadata.COMPILATION"

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const-string v1, "android.media.metadata.DATE"

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const-string v1, "android.media.metadata.DISC_NUMBER"

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const-string v1, "android.media.metadata.DURATION"

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const-string v1, "android.media.metadata.GENRE"

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const-string v1, "android.media.metadata.NUM_TRACKS"

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const-string v1, "android.media.metadata.TITLE"

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const-string v1, "android.media.metadata.WRITER"

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const-string v1, "android.media.metadata.YEAR"

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Landroid/media/MediaMetadata$1;

    invoke-direct {v0}, Landroid/media/MediaMetadata$1;-><init>()V

    sput-object v0, Landroid/media/MediaMetadata;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Bundle;Landroid/media/MediaMetadata$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaMetadata;-><init>(Landroid/os/Bundle;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/media/MediaMetadata$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaMetadata;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$100(Landroid/media/MediaMetadata;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$200()Landroid/util/ArrayMap;
    .locals 1

    sget-object v0, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    return-object v0
.end method

.method public static getKeyFromMetadataEditorKey(I)Ljava/lang/String;
    .locals 2

    sget-object v0, Landroid/media/MediaMetadata;->EDITOR_KEY_MAPPING:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public containsKey(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/media/MediaMetadata;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/media/MediaMetadata;

    move v3, v2

    :goto_0
    sget-object v4, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    sget-object v4, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v5, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0, v4}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    return v2

    :pswitch_1
    invoke-virtual {p0, v4}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v1, v4}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-eqz v5, :cond_2

    return v2

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MediaMetadata"

    const-string v3, "Failed to retrieve a key as Bitmap."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method public getDescription()Landroid/media/MediaDescription;
    .locals 13

    iget-object v0, p0, Landroid/media/MediaMetadata;->mDescription:Landroid/media/MediaDescription;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/MediaMetadata;->mDescription:Landroid/media/MediaDescription;

    return-object v0

    :cond_0
    const-string v0, "android.media.metadata.MEDIA_ID"

    invoke-virtual {p0, v0}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "android.media.metadata.DISPLAY_TITLE"

    invoke-virtual {p0, v4}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez v5, :cond_1

    aput-object v4, v1, v7

    const-string v5, "android.media.metadata.DISPLAY_SUBTITLE"

    invoke-virtual {p0, v5}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v1, v8

    const-string v5, "android.media.metadata.DISPLAY_DESCRIPTION"

    invoke-virtual {p0, v5}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v1, v6

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    move v9, v5

    move v5, v7

    :goto_0
    array-length v10, v1

    if-ge v9, v10, :cond_3

    sget-object v10, Landroid/media/MediaMetadata;->PREFERRED_DESCRIPTION_ORDER:[Ljava/lang/String;

    array-length v10, v10

    if-ge v5, v10, :cond_3

    sget-object v10, Landroid/media/MediaMetadata;->PREFERRED_DESCRIPTION_ORDER:[Ljava/lang/String;

    add-int/lit8 v11, v5, 0x1

    aget-object v5, v10, v5

    invoke-virtual {p0, v5}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    add-int/lit8 v10, v9, 0x1

    aput-object v5, v1, v9

    move v9, v10

    :cond_2
    move v5, v11

    goto :goto_0

    :cond_3
    :goto_1
    move v5, v7

    :goto_2
    sget-object v9, Landroid/media/MediaMetadata;->PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

    array-length v9, v9

    if-ge v5, v9, :cond_5

    sget-object v9, Landroid/media/MediaMetadata;->PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

    aget-object v9, v9, v5

    invoke-virtual {p0, v9}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v9

    if-eqz v9, :cond_4

    move-object v2, v9

    goto :goto_3

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_5
    :goto_3
    move v5, v7

    :goto_4
    sget-object v9, Landroid/media/MediaMetadata;->PREFERRED_URI_ORDER:[Ljava/lang/String;

    array-length v9, v9

    if-ge v5, v9, :cond_7

    sget-object v9, Landroid/media/MediaMetadata;->PREFERRED_URI_ORDER:[Ljava/lang/String;

    aget-object v9, v9, v5

    invoke-virtual {p0, v9}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_5

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_7
    :goto_5
    const/4 v5, 0x0

    const-string v9, "android.media.metadata.MEDIA_URI"

    invoke-virtual {p0, v9}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    :cond_8
    new-instance v10, Landroid/media/MediaDescription$Builder;

    invoke-direct {v10}, Landroid/media/MediaDescription$Builder;-><init>()V

    invoke-virtual {v10, v0}, Landroid/media/MediaDescription$Builder;->setMediaId(Ljava/lang/String;)Landroid/media/MediaDescription$Builder;

    aget-object v7, v1, v7

    invoke-virtual {v10, v7}, Landroid/media/MediaDescription$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    aget-object v7, v1, v8

    invoke-virtual {v10, v7}, Landroid/media/MediaDescription$Builder;->setSubtitle(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    aget-object v6, v1, v6

    invoke-virtual {v10, v6}, Landroid/media/MediaDescription$Builder;->setDescription(Ljava/lang/CharSequence;)Landroid/media/MediaDescription$Builder;

    invoke-virtual {v10, v2}, Landroid/media/MediaDescription$Builder;->setIconBitmap(Landroid/graphics/Bitmap;)Landroid/media/MediaDescription$Builder;

    invoke-virtual {v10, v3}, Landroid/media/MediaDescription$Builder;->setIconUri(Landroid/net/Uri;)Landroid/media/MediaDescription$Builder;

    invoke-virtual {v10, v5}, Landroid/media/MediaDescription$Builder;->setMediaUri(Landroid/net/Uri;)Landroid/media/MediaDescription$Builder;

    iget-object v6, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

    const-string v7, "android.media.metadata.BT_FOLDER_TYPE"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v7, "android.media.extra.BT_FOLDER_TYPE"

    const-string v8, "android.media.metadata.BT_FOLDER_TYPE"

    invoke-virtual {p0, v8}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v6, v7, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v10, v6}, Landroid/media/MediaDescription$Builder;->setExtras(Landroid/os/Bundle;)Landroid/media/MediaDescription$Builder;

    :cond_9
    invoke-virtual {v10}, Landroid/media/MediaDescription$Builder;->build()Landroid/media/MediaDescription;

    move-result-object v6

    iput-object v6, p0, Landroid/media/MediaMetadata;->mDescription:Landroid/media/MediaDescription;

    iget-object v6, p0, Landroid/media/MediaMetadata;->mDescription:Landroid/media/MediaDescription;

    return-object v6
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 3

    iget-object v0, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getRating(Ljava/lang/String;)Landroid/media/Rating;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/media/Rating;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MediaMetadata"

    const-string v3, "Failed to retrieve a key as Rating."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Landroid/media/MediaMetadata;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 8

    const/16 v0, 0x11

    const/4 v1, 0x0

    move v2, v0

    move v0, v1

    :goto_0
    sget-object v3, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    sget-object v3, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Landroid/media/MediaMetadata;->METADATA_KEYS_TYPE:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x1f

    packed-switch v4, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    mul-int/2addr v5, v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v1

    invoke-static {v4}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v5, v4

    goto :goto_1

    :pswitch_1
    mul-int/2addr v5, v2

    invoke-virtual {p0, v3}, Landroid/media/MediaMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    add-int/2addr v5, v4

    nop

    :goto_1
    move v2, v5

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->size()I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/media/MediaMetadata;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
