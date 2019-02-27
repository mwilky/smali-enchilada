.class Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;
.super Ljava/lang/Object;
.source "NotificationColorUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/NotificationColorUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ColorUtilsFromCompat"
.end annotation


# static fields
.field private static final MIN_ALPHA_SEARCH_MAX_ITERATIONS:I = 0xa

.field private static final MIN_ALPHA_SEARCH_PRECISION:I = 0x1

.field private static final TEMP_ARRAY:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[D>;"
        }
    .end annotation
.end field

.field private static final XYZ_EPSILON:D = 0.008856

.field private static final XYZ_KAPPA:D = 903.3

.field private static final XYZ_WHITE_REFERENCE_X:D = 95.047

.field private static final XYZ_WHITE_REFERENCE_Y:D = 100.0

.field private static final XYZ_WHITE_REFERENCE_Z:D = 108.883


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 639
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 641
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HSLToColor([F)I
    .locals 13
    .param p0, "hsl"    # [F

    .line 947
    const/4 v0, 0x0

    aget v1, p0, v0

    .line 948
    .local v1, "h":F
    const/4 v2, 0x1

    aget v2, p0, v2

    .line 949
    .local v2, "s":F
    const/4 v3, 0x2

    aget v3, p0, v3

    .line 951
    .local v3, "l":F
    const/high16 v4, 0x40000000    # 2.0f

    mul-float v5, v4, v3

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    sub-float v5, v6, v5

    mul-float/2addr v5, v2

    .line 952
    .local v5, "c":F
    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v7, v5

    sub-float v7, v3, v7

    .line 953
    .local v7, "m":F
    const/high16 v8, 0x42700000    # 60.0f

    div-float v8, v1, v8

    rem-float/2addr v8, v4

    sub-float/2addr v8, v6

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sub-float/2addr v6, v4

    mul-float/2addr v6, v5

    .line 955
    .local v6, "x":F
    float-to-int v4, v1

    div-int/lit8 v4, v4, 0x3c

    .line 957
    .local v4, "hueSegment":I
    const/4 v8, 0x0

    .local v8, "r":I
    const/4 v9, 0x0

    .local v9, "g":I
    const/4 v10, 0x0

    .line 959
    .local v10, "b":I
    const/high16 v11, 0x437f0000    # 255.0f

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_0

    .line 987
    :pswitch_0
    add-float v12, v5, v7

    mul-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 988
    mul-float v12, v11, v7

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 989
    add-float v12, v6, v7

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v10

    goto :goto_0

    .line 981
    :pswitch_1
    add-float v12, v6, v7

    mul-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 982
    mul-float v12, v11, v7

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 983
    add-float v12, v5, v7

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 984
    goto :goto_0

    .line 976
    :pswitch_2
    mul-float v12, v11, v7

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 977
    add-float v12, v6, v7

    mul-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 978
    add-float v12, v5, v7

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 979
    goto :goto_0

    .line 971
    :pswitch_3
    mul-float v12, v11, v7

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 972
    add-float v12, v5, v7

    mul-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 973
    add-float v12, v6, v7

    mul-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 974
    goto :goto_0

    .line 966
    :pswitch_4
    add-float v12, v6, v7

    mul-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 967
    add-float v12, v5, v7

    mul-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 968
    mul-float/2addr v11, v7

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 969
    goto :goto_0

    .line 961
    :pswitch_5
    add-float v12, v5, v7

    mul-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 962
    add-float v12, v6, v7

    mul-float/2addr v12, v11

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v9

    .line 963
    mul-float/2addr v11, v7

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v10

    .line 964
    nop

    .line 993
    :goto_0
    const/16 v11, 0xff

    invoke-static {v8, v0, v11}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->constrain(III)I

    move-result v8

    .line 994
    invoke-static {v9, v0, v11}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->constrain(III)I

    move-result v9

    .line 995
    invoke-static {v10, v0, v11}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->constrain(III)I

    move-result v0

    .line 997
    .end local v10    # "b":I
    .local v0, "b":I
    invoke-static {v8, v9, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v10

    return v10

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static LABToColor(DDD)I
    .locals 8
    .param p0, "l"    # D
    .param p2, "a"    # D
    .param p4, "b"    # D

    .line 905
    invoke-static {}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->getTempDouble3Array()[D

    move-result-object v7

    .line 906
    .local v7, "result":[D
    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, v7

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->LABToXYZ(DDD[D)V

    .line 907
    const/4 v0, 0x0

    aget-wide v1, v7, v0

    const/4 v0, 0x1

    aget-wide v3, v7, v0

    const/4 v0, 0x2

    aget-wide v5, v7, v0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->XYZToColor(DDD)I

    move-result v0

    return v0
.end method

.method public static LABToXYZ(DDD[D)V
    .locals 23
    .param p0, "l"    # D
    .param p2, "a"    # D
    .param p4, "b"    # D
    .param p6, "outXyz"    # [D

    .line 848
    const-wide/high16 v0, 0x4030000000000000L    # 16.0

    add-double v2, p0, v0

    const-wide/high16 v4, 0x405d000000000000L    # 116.0

    div-double/2addr v2, v4

    .line 849
    .local v2, "fy":D
    const-wide v6, 0x407f400000000000L    # 500.0

    div-double v6, p2, v6

    add-double/2addr v6, v2

    .line 850
    .local v6, "fx":D
    const-wide/high16 v8, 0x4069000000000000L    # 200.0

    div-double v8, p4, v8

    sub-double v8, v2, v8

    .line 852
    .local v8, "fz":D
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    .line 853
    .local v12, "tmp":D
    const-wide v14, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v16, v12, v14

    const-wide v17, 0x408c3a6666666666L    # 903.3

    if-lez v16, :cond_0

    move-wide/from16 v19, v12

    goto :goto_0

    :cond_0
    mul-double v19, v4, v6

    const-wide/high16 v10, 0x4030000000000000L    # 16.0

    sub-double v19, v19, v10

    div-double v19, v19, v17

    .line 854
    .local v19, "xr":D
    :goto_0
    const-wide v21, 0x401fff9da4c11507L    # 7.9996247999999985

    cmpl-double v16, p0, v21

    if-lez v16, :cond_1

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v21

    goto :goto_1

    :cond_1
    div-double v21, p0, v17

    .line 856
    .local v21, "yr":D
    :goto_1
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 857
    .end local v12    # "tmp":D
    .local v0, "tmp":D
    cmpl-double v12, v0, v14

    if-lez v12, :cond_2

    move-wide v4, v0

    goto :goto_2

    :cond_2
    mul-double/2addr v4, v8

    const-wide/high16 v10, 0x4030000000000000L    # 16.0

    sub-double/2addr v4, v10

    div-double v4, v4, v17

    .line 859
    .local v4, "zr":D
    :goto_2
    const/4 v10, 0x0

    const-wide v11, 0x4057c3020c49ba5eL    # 95.047

    mul-double v11, v11, v19

    aput-wide v11, p6, v10

    .line 860
    const/4 v10, 0x1

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    mul-double v11, v11, v21

    aput-wide v11, p6, v10

    .line 861
    const/4 v10, 0x2

    const-wide v11, 0x405b3883126e978dL    # 108.883

    mul-double/2addr v11, v4

    aput-wide v11, p6, v10

    .line 862
    return-void
.end method

.method public static RGBToHSL(III[F)V
    .locals 16
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I
    .param p3, "outHsl"    # [F

    .line 1031
    move/from16 v0, p0

    int-to-float v1, v0

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    .line 1032
    .local v1, "rf":F
    move/from16 v3, p1

    int-to-float v4, v3

    div-float/2addr v4, v2

    .line 1033
    .local v4, "gf":F
    move/from16 v5, p2

    int-to-float v6, v5

    div-float/2addr v6, v2

    .line 1035
    .local v6, "bf":F
    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1036
    .local v2, "max":F
    invoke-static {v4, v6}, Ljava/lang/Math;->min(FF)F

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 1037
    .local v7, "min":F
    sub-float v8, v2, v7

    .line 1040
    .local v8, "deltaMaxMin":F
    add-float v9, v2, v7

    const/high16 v10, 0x40000000    # 2.0f

    div-float/2addr v9, v10

    .line 1042
    .local v9, "l":F
    cmpl-float v11, v2, v7

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x0

    if-nez v11, :cond_0

    .line 1044
    move v10, v13

    .local v10, "s":F
    move v11, v13

    .local v11, "h":F
    goto :goto_2

    .line 1046
    .end local v10    # "s":F
    .end local v11    # "h":F
    :cond_0
    cmpl-float v11, v2, v1

    if-nez v11, :cond_1

    .line 1047
    sub-float v11, v4, v6

    div-float/2addr v11, v8

    const/high16 v14, 0x40c00000    # 6.0f

    rem-float/2addr v11, v14

    .restart local v11    # "h":F
    :goto_0
    goto :goto_1

    .line 1048
    .end local v11    # "h":F
    :cond_1
    cmpl-float v11, v2, v4

    if-nez v11, :cond_2

    .line 1049
    sub-float v11, v6, v1

    div-float/2addr v11, v8

    add-float/2addr v11, v10

    goto :goto_0

    .line 1051
    :cond_2
    sub-float v11, v1, v4

    div-float/2addr v11, v8

    const/high16 v14, 0x40800000    # 4.0f

    add-float/2addr v11, v14

    .line 1054
    .restart local v11    # "h":F
    :goto_1
    mul-float/2addr v10, v9

    sub-float/2addr v10, v12

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    sub-float v10, v12, v10

    div-float v10, v8, v10

    .line 1057
    .restart local v10    # "s":F
    :goto_2
    const/high16 v14, 0x42700000    # 60.0f

    mul-float/2addr v14, v11

    const/high16 v12, 0x43b40000    # 360.0f

    rem-float/2addr v14, v12

    .line 1058
    .end local v11    # "h":F
    .local v14, "h":F
    cmpg-float v11, v14, v13

    if-gez v11, :cond_3

    .line 1059
    add-float/2addr v14, v12

    .line 1062
    :cond_3
    const/4 v11, 0x0

    invoke-static {v14, v13, v12}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->constrain(FFF)F

    move-result v12

    aput v12, p3, v11

    .line 1063
    const/4 v11, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-static {v10, v13, v12}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->constrain(FFF)F

    move-result v15

    aput v15, p3, v11

    .line 1064
    const/4 v11, 0x2

    invoke-static {v9, v13, v12}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->constrain(FFF)F

    move-result v12

    aput v12, p3, v11

    .line 1065
    return-void
.end method

.method public static RGBToLAB(III[D)V
    .locals 8
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I
    .param p3, "outLab"    # [D

    .line 734
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->RGBToXYZ(III[D)V

    .line 736
    const/4 v0, 0x0

    aget-wide v1, p3, v0

    const/4 v0, 0x1

    aget-wide v3, p3, v0

    const/4 v0, 0x2

    aget-wide v5, p3, v0

    move-object v7, p3

    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->XYZToLAB(DDD[D)V

    .line 738
    return-void
.end method

.method public static RGBToXYZ(III[D)V
    .locals 22
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I
    .param p3, "outXyz"    # [D

    .line 779
    move-object/from16 v0, p3

    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 783
    move/from16 v1, p0

    int-to-double v2, v1

    const-wide v4, 0x406fe00000000000L    # 255.0

    div-double/2addr v2, v4

    .line 784
    .local v2, "sr":D
    const-wide v6, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v8, v2, v6

    const-wide v9, 0x4003333333333333L    # 2.4

    const-wide v11, 0x3ff0e147ae147ae1L    # 1.055

    const-wide v13, 0x3fac28f5c28f5c29L    # 0.055

    const-wide v15, 0x4029d70a3d70a3d7L    # 12.92

    if-gez v8, :cond_0

    div-double v17, v2, v15

    goto :goto_0

    :cond_0
    add-double v17, v2, v13

    div-double v13, v17, v11

    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    :goto_0
    move-wide/from16 v2, v17

    .line 785
    move/from16 v8, p1

    int-to-double v13, v8

    div-double/2addr v13, v4

    .line 786
    .local v13, "sg":D
    cmpg-double v17, v13, v6

    if-gez v17, :cond_1

    div-double v17, v13, v15

    goto :goto_1

    :cond_1
    const-wide v17, 0x3fac28f5c28f5c29L    # 0.055

    add-double v19, v13, v17

    div-double v6, v19, v11

    invoke-static {v6, v7, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    :goto_1
    move-wide/from16 v6, v17

    .line 787
    .end local v13    # "sg":D
    .local v6, "sg":D
    move/from16 v13, p2

    int-to-double v9, v13

    div-double/2addr v9, v4

    .line 788
    .local v9, "sb":D
    const-wide v4, 0x3fa4b5dcc63f1412L    # 0.04045

    cmpg-double v4, v9, v4

    if-gez v4, :cond_2

    div-double v4, v9, v15

    goto :goto_2

    :cond_2
    const-wide v4, 0x3fac28f5c28f5c29L    # 0.055

    add-double/2addr v4, v9

    div-double/2addr v4, v11

    const-wide v11, 0x4003333333333333L    # 2.4

    invoke-static {v4, v5, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .line 790
    .end local v9    # "sb":D
    .local v4, "sb":D
    :goto_2
    const/4 v9, 0x0

    const-wide v10, 0x3fda64c2f837b4a2L    # 0.4124

    mul-double/2addr v10, v2

    const-wide v14, 0x3fd6e2eb1c432ca5L    # 0.3576

    mul-double/2addr v14, v6

    add-double/2addr v10, v14

    const-wide v14, 0x3fc71a9fbe76c8b4L    # 0.1805

    mul-double/2addr v14, v4

    add-double/2addr v10, v14

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    mul-double/2addr v10, v14

    aput-wide v10, v0, v9

    .line 791
    const/4 v9, 0x1

    const-wide v10, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double/2addr v10, v2

    const-wide v16, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double v16, v16, v6

    add-double v10, v10, v16

    const-wide v16, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double v16, v16, v4

    add-double v10, v10, v16

    mul-double/2addr v10, v14

    aput-wide v10, v0, v9

    .line 792
    const/4 v9, 0x2

    const-wide v10, 0x3f93c36113404ea5L    # 0.0193

    mul-double/2addr v10, v2

    const-wide v16, 0x3fbe83e425aee632L    # 0.1192

    mul-double v16, v16, v6

    add-double v10, v10, v16

    const-wide v16, 0x3fee6a7ef9db22d1L    # 0.9505

    mul-double v16, v16, v4

    add-double v10, v10, v16

    mul-double/2addr v14, v10

    aput-wide v14, v0, v9

    .line 793
    return-void

    .line 780
    .end local v2    # "sr":D
    .end local v4    # "sb":D
    .end local v6    # "sg":D
    :cond_3
    move/from16 v1, p0

    move/from16 v8, p1

    move/from16 v13, p2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "outXyz must have a length of 3."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static XYZToColor(DDD)I
    .locals 22
    .param p0, "x"    # D
    .param p2, "y"    # D
    .param p4, "z"    # D

    .line 879
    const-wide v2, 0x4009ecbfb15b573fL    # 3.2406

    mul-double v2, v2, p0

    const-wide v4, -0x400767a0f9096bbaL    # -1.5372

    mul-double v4, v4, p2

    add-double/2addr v2, v4

    const-wide v4, -0x402016f0068db8bbL    # -0.4986

    mul-double v4, v4, p4

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    .line 880
    .local v2, "r":D
    const-wide v6, -0x4010fec56d5cfaadL    # -0.9689

    mul-double v6, v6, p0

    const-wide v8, 0x3ffe0346dc5d6388L    # 1.8758

    mul-double v8, v8, p2

    add-double/2addr v6, v8

    const-wide v8, 0x3fa53f7ced916873L    # 0.0415

    mul-double v8, v8, p4

    add-double/2addr v6, v8

    div-double/2addr v6, v4

    .line 881
    .local v6, "g":D
    const-wide v8, 0x3fac84b5dcc63f14L    # 0.0557

    mul-double v8, v8, p0

    const-wide v10, -0x4035e353f7ced917L    # -0.204

    mul-double v10, v10, p2

    add-double/2addr v8, v10

    const-wide v10, 0x3ff0e978d4fdf3b6L    # 1.057

    mul-double v10, v10, p4

    add-double/2addr v8, v10

    div-double/2addr v8, v4

    .line 883
    .local v8, "b":D
    const-wide v4, 0x3f69a5c37387b719L    # 0.0031308

    cmpl-double v10, v2, v4

    const-wide v11, 0x4029d70a3d70a3d7L    # 12.92

    const-wide v13, 0x3fac28f5c28f5c29L    # 0.055

    const-wide v4, 0x3fdaaaaaaaaaaaabL    # 0.4166666666666667

    const-wide v17, 0x3ff0e147ae147ae1L    # 1.055

    if-lez v10, :cond_0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v19

    mul-double v19, v19, v17

    sub-double v19, v19, v13

    goto :goto_0

    :cond_0
    mul-double v19, v11, v2

    :goto_0
    move-wide/from16 v2, v19

    .line 884
    const-wide v15, 0x3f69a5c37387b719L    # 0.0031308

    cmpl-double v10, v6, v15

    if-lez v10, :cond_1

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v19

    mul-double v19, v19, v17

    sub-double v19, v19, v13

    goto :goto_1

    :cond_1
    mul-double v19, v11, v6

    :goto_1
    move-wide/from16 v6, v19

    .line 885
    const-wide v15, 0x3f69a5c37387b719L    # 0.0031308

    cmpl-double v10, v8, v15

    if-lez v10, :cond_2

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    mul-double v17, v17, v4

    sub-double v17, v17, v13

    goto :goto_2

    :cond_2
    mul-double v17, v11, v8

    :goto_2
    move-wide/from16 v4, v17

    .line 887
    .end local v8    # "b":D
    .local v4, "b":D
    const-wide v8, 0x406fe00000000000L    # 255.0

    mul-double v10, v2, v8

    .line 888
    invoke-static {v10, v11}, Ljava/lang/Math;->round(D)J

    move-result-wide v10

    long-to-int v10, v10

    const/16 v11, 0xff

    const/4 v0, 0x0

    invoke-static {v10, v0, v11}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->constrain(III)I

    move-result v1

    move/from16 v21, v1

    mul-double v0, v6, v8

    .line 889
    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v11}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->constrain(III)I

    move-result v0

    mul-double/2addr v8, v4

    .line 890
    invoke-static {v8, v9}, Ljava/lang/Math;->round(D)J

    move-result-wide v8

    long-to-int v8, v8

    invoke-static {v8, v1, v11}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->constrain(III)I

    move-result v1

    .line 887
    move/from16 v8, v21

    invoke-static {v8, v0, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method public static XYZToLAB(DDD[D)V
    .locals 7
    .param p0, "x"    # D
    .param p2, "y"    # D
    .param p4, "z"    # D
    .param p6, "outLab"    # [D

    .line 816
    array-length v0, p6

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 819
    const-wide v0, 0x4057c3020c49ba5eL    # 95.047

    div-double v0, p0, v0

    invoke-static {v0, v1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->pivotXyzComponent(D)D

    move-result-wide p0

    .line 820
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    div-double v0, p2, v0

    invoke-static {v0, v1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->pivotXyzComponent(D)D

    move-result-wide p2

    .line 821
    const-wide v0, 0x405b3883126e978dL    # 108.883

    div-double v0, p4, v0

    invoke-static {v0, v1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->pivotXyzComponent(D)D

    move-result-wide p4

    .line 822
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    const-wide/high16 v3, 0x405d000000000000L    # 116.0

    mul-double/2addr v3, p2

    const-wide/high16 v5, 0x4030000000000000L    # 16.0

    sub-double/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    aput-wide v1, p6, v0

    .line 823
    const/4 v0, 0x1

    const-wide v1, 0x407f400000000000L    # 500.0

    sub-double v3, p0, p2

    mul-double/2addr v1, v3

    aput-wide v1, p6, v0

    .line 824
    const/4 v0, 0x2

    const-wide/high16 v1, 0x4069000000000000L    # 200.0

    sub-double v3, p2, p4

    mul-double/2addr v1, v3

    aput-wide v1, p6, v0

    .line 825
    return-void

    .line 817
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "outLab must have a length of 3."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static calculateContrast(II)D
    .locals 8
    .param p0, "foreground"    # I
    .param p1, "background"    # I

    .line 690
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    .line 691
    const-string v0, "NotificationColorUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "background can not be translucent: #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 692
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 691
    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :cond_0
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 696
    invoke-static {p0, p1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->compositeColors(II)I

    move-result p0

    .line 699
    :cond_1
    invoke-static {p0}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateLuminance(I)D

    move-result-wide v0

    const-wide v2, 0x3fa999999999999aL    # 0.05

    add-double/2addr v0, v2

    .line 700
    .local v0, "luminance1":D
    invoke-static {p1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->calculateLuminance(I)D

    move-result-wide v4

    add-double/2addr v4, v2

    .line 703
    .local v4, "luminance2":D
    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    div-double/2addr v2, v6

    return-wide v2
.end method

.method public static calculateLuminance(I)D
    .locals 5
    .param p0, "color"    # I

    .line 676
    invoke-static {}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->getTempDouble3Array()[D

    move-result-object v0

    .line 677
    .local v0, "result":[D
    invoke-static {p0, v0}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->colorToXYZ(I[D)V

    .line 679
    const/4 v1, 0x1

    aget-wide v1, v0, v1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    return-wide v1
.end method

.method public static colorToHSL(I[F)V
    .locals 3
    .param p0, "color"    # I
    .param p1, "outHsl"    # [F

    .line 1012
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->RGBToHSL(III[F)V

    .line 1013
    return-void
.end method

.method public static colorToLAB(I[D)V
    .locals 3
    .param p0, "color"    # I
    .param p1, "outLab"    # [D

    .line 713
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->RGBToLAB(III[D)V

    .line 714
    return-void
.end method

.method public static colorToXYZ(I[D)V
    .locals 3
    .param p0, "color"    # I
    .param p1, "outXyz"    # [D

    .line 756
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->RGBToXYZ(III[D)V

    .line 757
    return-void
.end method

.method private static compositeAlpha(II)I
    .locals 2
    .param p0, "foregroundAlpha"    # I
    .param p1, "backgroundAlpha"    # I

    .line 662
    rsub-int v0, p1, 0xff

    rsub-int v1, p0, 0xff

    mul-int/2addr v0, v1

    div-int/lit16 v0, v0, 0xff

    rsub-int v0, v0, 0xff

    return v0
.end method

.method public static compositeColors(II)I
    .locals 7
    .param p0, "foreground"    # I
    .param p1, "background"    # I

    .line 647
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 648
    .local v0, "bgAlpha":I
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 649
    .local v1, "fgAlpha":I
    invoke-static {v1, v0}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->compositeAlpha(II)I

    move-result v2

    .line 651
    .local v2, "a":I
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 652
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    .line 651
    invoke-static {v3, v1, v4, v0, v2}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->compositeComponent(IIIII)I

    move-result v3

    .line 653
    .local v3, "r":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 654
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    .line 653
    invoke-static {v4, v1, v5, v0, v2}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->compositeComponent(IIIII)I

    move-result v4

    .line 655
    .local v4, "g":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    .line 656
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    .line 655
    invoke-static {v5, v1, v6, v0, v2}, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->compositeComponent(IIIII)I

    move-result v5

    .line 658
    .local v5, "b":I
    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v6

    return v6
.end method

.method private static compositeComponent(IIIII)I
    .locals 3
    .param p0, "fgC"    # I
    .param p1, "fgA"    # I
    .param p2, "bgC"    # I
    .param p3, "bgA"    # I
    .param p4, "a"    # I

    .line 666
    if-nez p4, :cond_0

    const/4 v0, 0x0

    return v0

    .line 667
    :cond_0
    const/16 v0, 0xff

    mul-int v1, v0, p0

    mul-int/2addr v1, p1

    mul-int v2, p2, p3

    sub-int/2addr v0, p1

    mul-int/2addr v2, v0

    add-int/2addr v1, v2

    mul-int/lit16 v0, p4, 0xff

    div-int/2addr v1, v0

    return v1
.end method

.method private static constrain(FFF)F
    .locals 1
    .param p0, "amount"    # F
    .param p1, "low"    # F
    .param p2, "high"    # F

    .line 915
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0
.end method

.method private static constrain(III)I
    .locals 1
    .param p0, "amount"    # I
    .param p1, "low"    # I
    .param p2, "high"    # I

    .line 911
    if-ge p0, p1, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    if-le p0, p2, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    move v0, p0

    :goto_0
    return v0
.end method

.method public static getTempDouble3Array()[D
    .locals 2

    .line 925
    sget-object v0, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 926
    .local v0, "result":[D
    if-nez v0, :cond_0

    .line 927
    const/4 v1, 0x3

    new-array v0, v1, [D

    .line 928
    sget-object v1, Lcom/android/internal/util/NotificationColorUtil$ColorUtilsFromCompat;->TEMP_ARRAY:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 930
    :cond_0
    return-object v0
.end method

.method private static pivotXyzComponent(D)D
    .locals 4
    .param p0, "component"    # D

    .line 919
    const-wide v0, 0x3f82231832fcac8eL    # 0.008856

    cmpl-double v0, p0, v0

    if-lez v0, :cond_0

    .line 920
    const-wide v0, 0x3fd5555555555555L    # 0.3333333333333333

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    goto :goto_0

    .line 921
    :cond_0
    const-wide v0, 0x408c3a6666666666L    # 903.3

    mul-double/2addr v0, p0

    const-wide/high16 v2, 0x4030000000000000L    # 16.0

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x405d000000000000L    # 116.0

    div-double/2addr v0, v2

    .line 919
    :goto_0
    return-wide v0
.end method
