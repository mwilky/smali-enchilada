.class public final synthetic Lcom/oneplus/settings/aboutphone/-$$Lambda$OPAboutPhone$RKK-fwpKlUC1qzXgjTLs813iYKo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/oneplus/settings/aboutphone/-$$Lambda$OPAboutPhone$RKK-fwpKlUC1qzXgjTLs813iYKo;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/settings/aboutphone/-$$Lambda$OPAboutPhone$RKK-fwpKlUC1qzXgjTLs813iYKo;

    invoke-direct {v0}, Lcom/oneplus/settings/aboutphone/-$$Lambda$OPAboutPhone$RKK-fwpKlUC1qzXgjTLs813iYKo;-><init>()V

    sput-object v0, Lcom/oneplus/settings/aboutphone/-$$Lambda$OPAboutPhone$RKK-fwpKlUC1qzXgjTLs813iYKo;->INSTANCE:Lcom/oneplus/settings/aboutphone/-$$Lambda$OPAboutPhone$RKK-fwpKlUC1qzXgjTLs813iYKo;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createSummaryProvider(Landroid/app/Activity;Lcom/android/settings/dashboard/SummaryLoader;)Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;
    .locals 0

    invoke-static {p1, p2}, Lcom/oneplus/settings/aboutphone/OPAboutPhone;->lambda$static$0(Landroid/app/Activity;Lcom/android/settings/dashboard/SummaryLoader;)Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;

    move-result-object p1

    return-object p1
.end method
