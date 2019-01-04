.class public Lcom/android/settings/location/LocationSliceBuilder;
.super Ljava/lang/Object;
.source "LocationSliceBuilder.java"


# static fields
.field public static final LOCATION_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "android.settings.slices"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "action"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/location/LocationSliceBuilder;->LOCATION_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 5

    const v0, 0x7f120851

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    const-class v2, Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "location"

    const/16 v4, 0x3f

    invoke-static {p0, v2, v3, v0, v4}, Lcom/android/settings/search/DatabaseIndexingUtils;->buildSearchResultPageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/android/settings/SubSettings;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v2

    return-object v2
.end method

.method private static getPrimaryAction(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 2

    invoke-static {p0}, Lcom/android/settings/location/LocationSliceBuilder;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method public static getSlice(Landroid/content/Context;)Landroidx/slice/Slice;
    .locals 9

    const v0, 0x7f08022e

    invoke-static {p0, v0}, Landroid/support/v4/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v0

    const v1, 0x7f120851

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lcom/android/settings/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v2

    invoke-static {p0}, Lcom/android/settings/location/LocationSliceBuilder;->getPrimaryAction(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v3

    new-instance v4, Landroidx/slice/builders/SliceAction;

    invoke-direct {v4, v3, v0, v1}, Landroidx/slice/builders/SliceAction;-><init>(Landroid/app/PendingIntent;Landroid/support/v4/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)V

    new-instance v5, Landroidx/slice/builders/ListBuilder;

    sget-object v6, Lcom/android/settings/location/LocationSliceBuilder;->LOCATION_URI:Landroid/net/Uri;

    const-wide/16 v7, -0x1

    invoke-direct {v5, p0, v6, v7, v8}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    invoke-virtual {v5, v2}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object v5

    new-instance v6, Lcom/android/settings/location/-$$Lambda$LocationSliceBuilder$b_EpqAhS4ORYylfhNREU0o0sGYE;

    invoke-direct {v6, v1, v0, v4}, Lcom/android/settings/location/-$$Lambda$LocationSliceBuilder$b_EpqAhS4ORYylfhNREU0o0sGYE;-><init>(Ljava/lang/String;Landroid/support/v4/graphics/drawable/IconCompat;Landroidx/slice/builders/SliceAction;)V

    invoke-virtual {v5, v6}, Landroidx/slice/builders/ListBuilder;->addRow(Landroid/support/v4/util/Consumer;)Landroidx/slice/builders/ListBuilder;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object v5

    return-object v5
.end method

.method static synthetic lambda$getSlice$0(Ljava/lang/String;Landroid/support/v4/graphics/drawable/IconCompat;Landroidx/slice/builders/SliceAction;Landroidx/slice/builders/ListBuilder$RowBuilder;)V
    .locals 2

    nop

    invoke-virtual {p3, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroid/support/v4/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    return-void
.end method
