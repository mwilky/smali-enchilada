.class public Landroid/text/method/QwertyKeyListener;
.super Landroid/text/method/BaseKeyListener;
.source "QwertyKeyListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/QwertyKeyListener$Replaced;
    }
.end annotation


# static fields
.field private static PICKER_SETS:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sFullKeyboardInstance:Landroid/text/method/QwertyKeyListener;

.field private static sInstance:[Landroid/text/method/QwertyKeyListener;


# instance fields
.field private mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

.field private mAutoText:Z

.field private mFullKeyboard:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Landroid/text/method/TextKeyListener$Capitalize;->values()[Landroid/text/method/TextKeyListener$Capitalize;

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Landroid/text/method/QwertyKeyListener;

    sput-object v0, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u00c0\u00c1\u00c2\u00c4\u00c6\u00c3\u00c5\u0104\u0100"

    const/16 v2, 0x41

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u00c7\u0106\u010c"

    const/16 v2, 0x43

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u010e"

    const/16 v2, 0x44

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u00c8\u00c9\u00ca\u00cb\u0118\u011a\u0112"

    const/16 v2, 0x45

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u011e"

    const/16 v2, 0x47

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u0141"

    const/16 v2, 0x4c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u00cc\u00cd\u00ce\u00cf\u012a\u0130"

    const/16 v2, 0x49

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u00d1\u0143\u0147"

    const/16 v2, 0x4e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u00d8\u0152\u00d5\u00d2\u00d3\u00d4\u00d6\u014c"

    const/16 v2, 0x4f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u0158"

    const/16 v2, 0x52

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u015a\u0160\u015e"

    const/16 v2, 0x53

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u0164"

    const/16 v2, 0x54

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u00d9\u00da\u00db\u00dc\u016e\u016a"

    const/16 v2, 0x55

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u00dd\u0178"

    const/16 v2, 0x59

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u0179\u017b\u017d"

    const/16 v2, 0x5a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u00e0\u00e1\u00e2\u00e4\u00e6\u00e3\u00e5\u0105\u0101"

    const/16 v2, 0x61

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u00e7\u0107\u010d"

    const/16 v2, 0x63

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u010f"

    const/16 v2, 0x64

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u00e8\u00e9\u00ea\u00eb\u0119\u011b\u0113"

    const/16 v2, 0x65

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u011f"

    const/16 v2, 0x67

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u00ec\u00ed\u00ee\u00ef\u012b\u0131"

    const/16 v2, 0x69

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u0142"

    const/16 v2, 0x6c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u00f1\u0144\u0148"

    const/16 v2, 0x6e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u00f8\u0153\u00f5\u00f2\u00f3\u00f4\u00f6\u014d"

    const/16 v2, 0x6f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u0159"

    const/16 v2, 0x72

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u00a7\u00df\u015b\u0161\u015f"

    const/16 v2, 0x73

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u0165"

    const/16 v2, 0x74

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u00f9\u00fa\u00fb\u00fc\u016f\u016b"

    const/16 v2, 0x75

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u00fd\u00ff"

    const/16 v2, 0x79

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u017a\u017c\u017e"

    const/16 v2, 0x7a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u2026\u00a5\u2022\u00ae\u00a9\u00b1[]{}\\|"

    const v2, 0xef01

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string v1, "\\"

    const/16 v2, 0x2f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u00b9\u00bd\u2153\u00bc\u215b"

    const/16 v2, 0x31

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u00b2\u2154"

    const/16 v2, 0x32

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u00b3\u00be\u215c"

    const/16 v2, 0x33

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u2074"

    const/16 v2, 0x34

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u215d"

    const/16 v2, 0x35

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u215e"

    const/16 v2, 0x37

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u207f\u2205"

    const/16 v2, 0x30

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u00a2\u00a3\u20ac\u00a5\u20a3\u20a4\u20b1"

    const/16 v2, 0x24

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u2030"

    const/16 v2, 0x25

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u2020\u2021"

    const/16 v2, 0x2a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u2013\u2014"

    const/16 v2, 0x2d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u00b1"

    const/16 v2, 0x2b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string v1, "[{<"

    const/16 v2, 0x28

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string v1, "]}>"

    const/16 v2, 0x29

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u00a1"

    const/16 v2, 0x21

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u201c\u201d\u00ab\u00bb\u02dd"

    const/16 v2, 0x22

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u00bf"

    const/16 v2, 0x3f

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u201a\u201e"

    const/16 v2, 0x2c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u2260\u2248\u221e"

    const/16 v2, 0x3d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u2264\u00ab\u2039"

    const/16 v2, 0x3c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    const-string/jumbo v1, "\u2265\u00bb\u203a"

    const/16 v2, 0x3e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/text/method/QwertyKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;ZZ)V

    return-void
.end method

.method private constructor <init>(Landroid/text/method/TextKeyListener$Capitalize;ZZ)V
    .locals 0

    invoke-direct {p0}, Landroid/text/method/BaseKeyListener;-><init>()V

    iput-object p1, p0, Landroid/text/method/QwertyKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    iput-boolean p2, p0, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    iput-boolean p3, p0, Landroid/text/method/QwertyKeyListener;->mFullKeyboard:Z

    return-void
.end method

.method public static getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/QwertyKeyListener;
    .locals 3

    invoke-virtual {p1}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p0

    sget-object v1, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    sget-object v1, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    new-instance v2, Landroid/text/method/QwertyKeyListener;

    invoke-direct {v2, p1, p0}, Landroid/text/method/QwertyKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V

    aput-object v2, v1, v0

    :cond_0
    sget-object v1, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    aget-object v1, v1, v0

    return-object v1
.end method

.method public static getInstanceForFullKeyboard()Landroid/text/method/QwertyKeyListener;
    .locals 4

    sget-object v0, Landroid/text/method/QwertyKeyListener;->sFullKeyboardInstance:Landroid/text/method/QwertyKeyListener;

    if-nez v0, :cond_0

    new-instance v0, Landroid/text/method/QwertyKeyListener;

    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/text/method/QwertyKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;ZZ)V

    sput-object v0, Landroid/text/method/QwertyKeyListener;->sFullKeyboardInstance:Landroid/text/method/QwertyKeyListener;

    :cond_0
    sget-object v0, Landroid/text/method/QwertyKeyListener;->sFullKeyboardInstance:Landroid/text/method/QwertyKeyListener;

    return-object v0
.end method

.method private getReplacement(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;
    .locals 8

    sub-int v0, p3, p2

    const/4 v1, 0x0

    invoke-static {p1, p2, p3, p4}, Landroid/text/AutoText;->get(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v2, :cond_0

    invoke-static {p1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    sub-int v6, p3, p2

    invoke-static {v5, v4, v6, p4}, Landroid/text/AutoText;->get(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x1

    if-nez v2, :cond_0

    return-object v3

    :cond_0
    const/4 v5, 0x0

    if-eqz v1, :cond_3

    move v6, v5

    move v5, p2

    :goto_0
    if-ge v5, p3, :cond_2

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v7

    if-eqz v7, :cond_1

    add-int/lit8 v6, v6, 0x1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move v5, v6

    :cond_3
    if-nez v5, :cond_4

    move-object v6, v2

    :goto_1
    goto :goto_2

    :cond_4
    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    invoke-static {v2}, Landroid/text/method/QwertyKeyListener;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_5
    if-ne v5, v0, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_6
    invoke-static {v2}, Landroid/text/method/QwertyKeyListener;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v7, v0, :cond_7

    invoke-static {p1, p2, v6, v4, v0}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v4

    if-eqz v4, :cond_7

    return-object v3

    :cond_7
    return-object v6
.end method

.method public static markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V
    .locals 5

    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v0

    const-class v1, Landroid/text/method/QwertyKeyListener$Replaced;

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/method/QwertyKeyListener$Replaced;

    move v1, v2

    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_0

    aget-object v3, v0, v1

    invoke-interface {p0, v3}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    new-array v3, v1, [C

    invoke-virtual {p3, v2, v1, v3, v2}, Ljava/lang/String;->getChars(II[CI)V

    new-instance v2, Landroid/text/method/QwertyKeyListener$Replaced;

    invoke-direct {v2, v3}, Landroid/text/method/QwertyKeyListener$Replaced;-><init>([C)V

    const/16 v4, 0x21

    invoke-interface {p0, v2, p1, p2, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method private showCharacterPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z
    .locals 9

    sget-object v0, Landroid/text/method/QwertyKeyListener;->PICKER_SETS:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v7, 0x1

    if-ne p5, v7, :cond_1

    new-instance v8, Landroid/text/method/CharacterPickerDialog;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object v1, v8

    move-object v3, p1

    move-object v4, p2

    move-object v5, v0

    move v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/text/method/CharacterPickerDialog;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/text/Editable;Ljava/lang/String;Z)V

    invoke-virtual {v8}, Landroid/text/method/CharacterPickerDialog;->show()V

    :cond_1
    return v7
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getInputType()I
    .locals 2

    iget-object v0, p0, Landroid/text/method/QwertyKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    iget-boolean v1, p0, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    invoke-static {v0, v1}, Landroid/text/method/QwertyKeyListener;->makeTextContentType(Landroid/text/method/TextKeyListener$Capitalize;Z)I

    move-result v0

    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 23

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    const/4 v0, 0x0

    if-eqz v8, :cond_0

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/text/method/TextKeyListener;->getPrefs(Landroid/content/Context;)I

    move-result v0

    :cond_0
    move v11, v0

    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v0

    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v12, 0x0

    if-ltz v2, :cond_2

    if-gez v3, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move v13, v2

    move v14, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v12

    move v2, v12

    invoke-static {v9, v12, v12}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0

    :goto_2
    sget-object v0, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v9, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v15

    sget-object v0, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v9, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v9, v10}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;Landroid/view/KeyEvent;)I

    move-result v0

    invoke-virtual {v10, v0}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v5

    iget-boolean v0, v7, Landroid/text/method/QwertyKeyListener;->mFullKeyboard:Z

    const/16 v16, 0x1

    if-nez v0, :cond_5

    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-lez v0, :cond_5

    if-ne v13, v14, :cond_5

    if-lez v13, :cond_5

    add-int/lit8 v1, v13, -0x1

    invoke-interface {v9, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    if-eq v4, v5, :cond_4

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v1

    if-ne v4, v1, :cond_3

    goto :goto_3

    :cond_3
    move v12, v5

    move v10, v6

    goto :goto_4

    :cond_4
    :goto_3
    if-eqz v8, :cond_5

    const/16 v17, 0x0

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    move/from16 v18, v4

    move v12, v5

    move/from16 v5, v17

    move v10, v6

    move v6, v0

    invoke-direct/range {v1 .. v6}, Landroid/text/method/QwertyKeyListener;->showCharacterPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    return v16

    :cond_5
    move v12, v5

    move v10, v6

    :cond_6
    :goto_4
    const v0, 0xef01

    if-ne v12, v0, :cond_8

    if-eqz v8, :cond_7

    const v4, 0xef01

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, v7

    move-object v2, v8

    move-object v3, v9

    invoke-direct/range {v1 .. v6}, Landroid/text/method/QwertyKeyListener;->showCharacterPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z

    :cond_7
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    return v16

    :cond_8
    const v0, 0xef00

    if-ne v12, v0, :cond_c

    const/16 v0, 0x10

    if-ne v13, v14, :cond_9

    move v1, v14

    :goto_5
    if-lez v1, :cond_a

    sub-int v2, v14, v1

    const/4 v3, 0x4

    if-ge v2, v3, :cond_a

    add-int/lit8 v2, v1, -0x1

    invoke-interface {v9, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Character;->digit(CI)I

    move-result v2

    if-ltz v2, :cond_a

    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    :cond_9
    move v1, v13

    :cond_a
    const/4 v2, -0x1

    :try_start_0
    invoke-static {v9, v1, v14}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v0

    goto :goto_6

    :catch_0
    move-exception v0

    :goto_6
    if-ltz v2, :cond_b

    move v13, v1

    invoke-static {v9, v13, v14}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    move v5, v2

    goto :goto_7

    :cond_b
    const/4 v5, 0x0

    goto :goto_7

    :cond_c
    move v5, v12

    :goto_7
    const/16 v2, 0x21

    if-eqz v5, :cond_20

    const/4 v3, 0x0

    const/high16 v4, -0x80000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_d

    const/4 v3, 0x1

    const v4, 0x7fffffff

    and-int/2addr v5, v4

    :cond_d
    if-ne v15, v13, :cond_f

    if-ne v10, v14, :cond_f

    const/4 v4, 0x0

    sub-int v6, v14, v13

    add-int/lit8 v6, v6, -0x1

    if-nez v6, :cond_e

    invoke-interface {v9, v13}, Landroid/text/Editable;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v12

    if-eqz v12, :cond_e

    move v5, v12

    const/4 v4, 0x1

    const/4 v3, 0x0

    :cond_e
    if-nez v4, :cond_f

    invoke-static {v9, v14}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    sget-object v6, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v9, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    move v13, v14

    :cond_f
    and-int/lit8 v4, v11, 0x1

    const/16 v6, 0x11

    if-eqz v4, :cond_12

    invoke-static {v5}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, v7, Landroid/text/method/QwertyKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    invoke-static {v4, v9, v13}, Landroid/text/method/TextKeyListener;->shouldCap(Landroid/text/method/TextKeyListener$Capitalize;Ljava/lang/CharSequence;I)Z

    move-result v4

    if-eqz v4, :cond_12

    sget-object v4, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    invoke-interface {v9, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    sget-object v12, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    invoke-interface {v9, v12}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v12

    if-ne v4, v13, :cond_10

    shr-int/lit8 v17, v12, 0x10

    const v18, 0xffff

    and-int v1, v17, v18

    if-ne v1, v5, :cond_10

    sget-object v1, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    invoke-interface {v9, v1}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_8

    :cond_10
    shl-int/lit8 v1, v5, 0x10

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v5

    if-nez v13, :cond_11

    sget-object v12, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    or-int v0, v6, v1

    const/4 v6, 0x0

    invoke-interface {v9, v12, v6, v6, v0}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_8

    :cond_11
    sget-object v0, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    add-int/lit8 v6, v13, -0x1

    or-int v12, v2, v1

    invoke-interface {v9, v0, v6, v13, v12}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    :cond_12
    :goto_8
    if-eq v13, v14, :cond_13

    invoke-static {v9, v14}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_13
    sget-object v0, Landroid/text/method/QwertyKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    const/16 v1, 0x11

    invoke-interface {v9, v0, v13, v13, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    int-to-char v0, v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v13, v14, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    sget-object v0, Landroid/text/method/QwertyKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    invoke-interface {v9, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    if-ge v0, v1, :cond_14

    sget-object v4, Landroid/text/method/TextKeyListener;->LAST_TYPED:Ljava/lang/Object;

    invoke-interface {v9, v4, v0, v1, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    if-eqz v3, :cond_14

    invoke-static {v9, v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    sget-object v4, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    invoke-interface {v9, v4, v0, v1, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    :cond_14
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    and-int/lit8 v4, v11, 0x2

    const/16 v6, 0x16

    const/16 v12, 0x20

    if-eqz v4, :cond_1a

    iget-boolean v4, v7, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    if-eqz v4, :cond_1a

    if-eq v5, v12, :cond_16

    const/16 v4, 0x9

    if-eq v5, v4, :cond_16

    const/16 v4, 0xa

    if-eq v5, v4, :cond_16

    const/16 v4, 0x2c

    if-eq v5, v4, :cond_16

    const/16 v4, 0x2e

    if-eq v5, v4, :cond_16

    if-eq v5, v2, :cond_16

    const/16 v4, 0x3f

    if-eq v5, v4, :cond_16

    const/16 v4, 0x22

    if-eq v5, v4, :cond_16

    invoke-static {v5}, Ljava/lang/Character;->getType(I)I

    move-result v4

    if-ne v4, v6, :cond_15

    goto :goto_9

    :cond_15
    move/from16 v19, v1

    goto :goto_d

    :cond_16
    :goto_9
    sget-object v4, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    invoke-interface {v9, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    if-eq v4, v0, :cond_1a

    move v4, v0

    :goto_a
    if-lez v4, :cond_18

    add-int/lit8 v14, v4, -0x1

    invoke-interface {v9, v14}, Landroid/text/Editable;->charAt(I)C

    move-result v14

    const/16 v6, 0x27

    if-eq v14, v6, :cond_17

    invoke-static {v14}, Ljava/lang/Character;->isLetter(C)Z

    move-result v6

    if-nez v6, :cond_17

    goto :goto_b

    :cond_17
    add-int/lit8 v4, v4, -0x1

    const/16 v6, 0x16

    goto :goto_a

    :cond_18
    :goto_b
    invoke-direct {v7, v9, v4, v0, v8}, Landroid/text/method/QwertyKeyListener;->getReplacement(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1a

    invoke-interface/range {p2 .. p2}, Landroid/text/Editable;->length()I

    move-result v14

    const-class v12, Landroid/text/method/QwertyKeyListener$Replaced;

    const/4 v2, 0x0

    invoke-interface {v9, v2, v14, v12}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v12

    move-object v2, v12

    check-cast v2, [Landroid/text/method/QwertyKeyListener$Replaced;

    const/4 v12, 0x0

    :goto_c
    array-length v14, v2

    if-ge v12, v14, :cond_19

    aget-object v14, v2, v12

    invoke-interface {v9, v14}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_c

    :cond_19
    sub-int v12, v0, v4

    new-array v12, v12, [C

    const/4 v14, 0x0

    invoke-static {v9, v4, v0, v12, v14}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    new-instance v14, Landroid/text/method/QwertyKeyListener$Replaced;

    invoke-direct {v14, v12}, Landroid/text/method/QwertyKeyListener$Replaced;-><init>([C)V

    move/from16 v19, v1

    const/16 v1, 0x21

    invoke-interface {v9, v14, v4, v0, v1}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    invoke-interface {v9, v4, v0, v6}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_d

    :cond_1a
    move/from16 v19, v1

    :goto_d
    and-int/lit8 v1, v11, 0x4

    if-eqz v1, :cond_1f

    iget-boolean v1, v7, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    if-eqz v1, :cond_1f

    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v1

    add-int/lit8 v2, v1, -0x3

    if-ltz v2, :cond_1e

    add-int/lit8 v2, v1, -0x1

    invoke-interface {v9, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    const/16 v4, 0x20

    if-ne v2, v4, :cond_1e

    add-int/lit8 v2, v1, -0x2

    invoke-interface {v9, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_1e

    add-int/lit8 v2, v1, -0x3

    invoke-interface {v9, v2}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    add-int/lit8 v4, v1, -0x3

    :goto_e
    if-lez v4, :cond_1c

    const/16 v6, 0x22

    if-eq v2, v6, :cond_1b

    invoke-static {v2}, Ljava/lang/Character;->getType(C)I

    move-result v6

    const/16 v12, 0x16

    if-ne v6, v12, :cond_1c

    goto :goto_f

    :cond_1b
    const/16 v12, 0x16

    :goto_f
    add-int/lit8 v6, v4, -0x1

    invoke-interface {v9, v6}, Landroid/text/Editable;->charAt(I)C

    move-result v2

    add-int/lit8 v4, v4, -0x1

    goto :goto_e

    :cond_1c
    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v4

    if-nez v4, :cond_1d

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_1e

    :cond_1d
    add-int/lit8 v4, v1, -0x2

    add-int/lit8 v6, v1, -0x1

    const-string v12, "."

    invoke-interface {v9, v4, v6, v12}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    :cond_1e
    move/from16 v19, v1

    :cond_1f
    return v16

    :cond_20
    const/16 v0, 0x43

    move/from16 v1, p3

    if-ne v1, v0, :cond_27

    move v3, v10

    move-object/from16 v2, p4

    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x2

    invoke-virtual {v2, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_10

    :cond_21
    move/from16 v21, v3

    goto/16 :goto_12

    :cond_22
    :goto_10
    if-ne v13, v14, :cond_26

    const/4 v0, 0x1

    sget-object v4, Landroid/text/method/TextKeyListener;->LAST_TYPED:Ljava/lang/Object;

    invoke-interface {v9, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    if-ne v4, v13, :cond_23

    add-int/lit8 v4, v13, -0x1

    invoke-interface {v9, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v4

    const/16 v6, 0xa

    if-eq v4, v6, :cond_23

    const/4 v0, 0x2

    :cond_23
    sub-int v4, v13, v0

    const-class v6, Landroid/text/method/QwertyKeyListener$Replaced;

    invoke-interface {v9, v4, v13, v6}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/text/method/QwertyKeyListener$Replaced;

    array-length v6, v4

    if-lez v6, :cond_26

    const/4 v6, 0x0

    aget-object v10, v4, v6

    invoke-interface {v9, v10}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    aget-object v12, v4, v6

    invoke-interface {v9, v12}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v12

    move/from16 v20, v0

    new-instance v0, Ljava/lang/String;

    move/from16 v21, v3

    aget-object v3, v4, v6

    invoke-static {v3}, Landroid/text/method/QwertyKeyListener$Replaced;->access$000(Landroid/text/method/QwertyKeyListener$Replaced;)[C

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    aget-object v3, v4, v6

    invoke-interface {v9, v3}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    if-lt v13, v12, :cond_25

    sget-object v3, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    const/16 v6, 0x22

    invoke-interface {v9, v3, v12, v12, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    invoke-interface {v9, v10, v12, v0}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    sget-object v3, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    invoke-interface {v9, v3}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v6, v3, -0x1

    if-ltz v6, :cond_24

    sget-object v6, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    add-int/lit8 v12, v3, -0x1

    move-object/from16 v22, v0

    const/16 v0, 0x21

    invoke-interface {v9, v6, v12, v3, v0}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_11

    :cond_24
    move-object/from16 v22, v0

    sget-object v0, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    invoke-interface {v9, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    :goto_11
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    return v16

    :cond_25
    move-object/from16 v22, v0

    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    invoke-super/range {p0 .. p4}, Landroid/text/method/BaseKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_26
    move/from16 v21, v3

    goto :goto_12

    :cond_27
    move/from16 v21, v10

    move-object/from16 v2, p4

    :goto_12
    invoke-super/range {p0 .. p4}, Landroid/text/method/BaseKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
