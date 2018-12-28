.class synthetic Lcom/android/server/preload/OneplusAppPreload$7;
.super Ljava/lang/Object;
.source "OneplusAppPreload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/preload/OneplusAppPreload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$server$preload$OneplusAppPreload$PreloadSource:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/android/server/preload/OneplusAppPreload$PreloadSource;->values()[Lcom/android/server/preload/OneplusAppPreload$PreloadSource;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/preload/OneplusAppPreload$7;->$SwitchMap$com$android$server$preload$OneplusAppPreload$PreloadSource:[I

    :try_start_0
    sget-object v0, Lcom/android/server/preload/OneplusAppPreload$7;->$SwitchMap$com$android$server$preload$OneplusAppPreload$PreloadSource:[I

    sget-object v1, Lcom/android/server/preload/OneplusAppPreload$PreloadSource;->PREDICTION:Lcom/android/server/preload/OneplusAppPreload$PreloadSource;

    invoke-virtual {v1}, Lcom/android/server/preload/OneplusAppPreload$PreloadSource;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/server/preload/OneplusAppPreload$7;->$SwitchMap$com$android$server$preload$OneplusAppPreload$PreloadSource:[I

    sget-object v1, Lcom/android/server/preload/OneplusAppPreload$PreloadSource;->HIGHUSAGE:Lcom/android/server/preload/OneplusAppPreload$PreloadSource;

    invoke-virtual {v1}, Lcom/android/server/preload/OneplusAppPreload$PreloadSource;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :goto_1
    return-void
.end method
