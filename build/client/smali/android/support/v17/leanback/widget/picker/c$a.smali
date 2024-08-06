.class public Landroid/support/v17/leanback/widget/picker/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/picker/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/Locale;

.field public final b:[Ljava/lang/String;

.field public final c:[Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/util/Locale;Landroid/content/res/Resources;)V
    .locals 3

    const/4 v2, 0x5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v17/leanback/widget/picker/c$a;->a:Ljava/util/Locale;

    invoke-static {p1}, Ljava/text/DateFormatSymbols;->getInstance(Ljava/util/Locale;)Ljava/text/DateFormatSymbols;

    move-result-object v0

    invoke-virtual {v0}, Ljava/text/DateFormatSymbols;->getShortMonths()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/picker/c$a;->b:[Ljava/lang/String;

    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getMinimum(I)I

    move-result v1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getMaximum(I)I

    move-result v0

    const-string v2, "%02d"

    invoke-static {v1, v0, v2}, Landroid/support/v17/leanback/widget/picker/c;->a(IILjava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/picker/c$a;->c:[Ljava/lang/String;

    return-void
.end method
