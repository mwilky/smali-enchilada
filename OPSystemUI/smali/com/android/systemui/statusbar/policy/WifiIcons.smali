.class public Lcom/android/systemui/statusbar/policy/WifiIcons;
.super Ljava/lang/Object;
.source "WifiIcons.java"


# static fields
.field public static final QS_WIFI_SIGNAL_STRENGTH:[[I

.field static final WIFI_LEVEL_COUNT:I

.field static final WIFI_SIGNAL_STRENGTH:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x2

    new-array v1, v0, [[I

    const/4 v2, 0x5

    new-array v3, v2, [I

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    const/4 v5, 0x1

    aput-object v3, v1, v5

    sput-object v1, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    new-array v0, v0, [[I

    new-array v1, v2, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v4

    new-array v1, v2, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->QS_WIFI_SIGNAL_STRENGTH:[[I

    sget-object v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_SIGNAL_STRENGTH:[[I

    aget-object v0, v0, v4

    array-length v0, v0

    sput v0, Lcom/android/systemui/statusbar/policy/WifiIcons;->WIFI_LEVEL_COUNT:I

    return-void

    :array_0
    .array-data 4
        0x7f080870
        0x7f080872
        0x7f080874
        0x7f080876
        0x7f080878
    .end array-data

    :array_1
    .array-data 4
        0x7f080871
        0x7f080873
        0x7f080875
        0x7f080877
        0x7f080879
    .end array-data

    :array_2
    .array-data 4
        0x7f0803aa
        0x7f0803ab
        0x7f0803ac
        0x7f0803ad
        0x7f0803ae
    .end array-data

    :array_3
    .array-data 4
        0x7f0803b2
        0x7f0803b3
        0x7f0803b4
        0x7f0803b5
        0x7f0803b6
    .end array-data
.end method
