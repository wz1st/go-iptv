.class public Landroid/support/v17/leanback/widget/picker/DatePicker;
.super Landroid/support/v17/leanback/widget/picker/a;


# static fields
.field private static final p:[I


# instance fields
.field a:Landroid/support/v17/leanback/widget/picker/b;

.field b:Landroid/support/v17/leanback/widget/picker/b;

.field c:Landroid/support/v17/leanback/widget/picker/b;

.field d:I

.field e:I

.field f:I

.field final g:Ljava/text/DateFormat;

.field h:Landroid/support/v17/leanback/widget/picker/c$a;

.field i:Ljava/util/Calendar;

.field j:Ljava/util/Calendar;

.field k:Ljava/util/Calendar;

.field l:Ljava/util/Calendar;

.field private o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v17/leanback/widget/picker/DatePicker;->p:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x5
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/picker/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    const/16 v8, 0x834

    const/16 v4, 0x76c

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/picker/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM/dd/yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->g:Ljava/text/DateFormat;

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/picker/DatePicker;->b()V

    sget-object v0, Landroid/support/v17/leanback/a$l;->lbDatePicker:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Landroid/support/v17/leanback/a$l;->lbDatePicker_android_minDate:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Landroid/support/v17/leanback/a$l;->lbDatePicker_android_maxDate:I

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->l:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->clear()V

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->l:Ljava/util/Calendar;

    invoke-direct {p0, v1, v3}, Landroid/support/v17/leanback/widget/picker/DatePicker;->a(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->l:Ljava/util/Calendar;

    invoke-virtual {v1, v4, v6, v7}, Ljava/util/Calendar;->set(III)V

    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->i:Ljava/util/Calendar;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->l:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->l:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->clear()V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->l:Ljava/util/Calendar;

    invoke-direct {p0, v2, v1}, Landroid/support/v17/leanback/widget/picker/DatePicker;->a(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->l:Ljava/util/Calendar;

    invoke-virtual {v1, v8, v6, v7}, Ljava/util/Calendar;->set(III)V

    :cond_1
    :goto_1
    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->j:Ljava/util/Calendar;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->l:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    sget v1, Landroid/support/v17/leanback/a$l;->lbDatePicker_datePickerFormat:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Ljava/lang/String;

    invoke-static {p1}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    :cond_2
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/picker/DatePicker;->setDatePickerFormat(Ljava/lang/String;)V

    return-void

    :cond_3
    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->l:Ljava/util/Calendar;

    invoke-virtual {v1, v4, v6, v7}, Ljava/util/Calendar;->set(III)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->l:Ljava/util/Calendar;

    invoke-virtual {v1, v8, v6, v7}, Ljava/util/Calendar;->set(III)V

    goto :goto_1
.end method

.method private a(III)V
    .locals 4

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->k:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->k:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->i:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->k:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->i:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->k:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->j:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->k:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->j:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private static a(C[C)Z
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    aget-char v2, p1, v0

    if-ne p0, v2, :cond_1

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static a(Landroid/support/v17/leanback/widget/picker/b;I)Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/b;->c()I

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/picker/b;->c(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/util/Calendar;)Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->g:Ljava/text/DateFormat;

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const-string v0, "DatePicker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Date: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not in format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MM/dd/yyyy"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b()V
    .locals 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v17/leanback/widget/picker/c;->a(Ljava/util/Locale;Landroid/content/res/Resources;)Landroid/support/v17/leanback/widget/picker/c$a;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->h:Landroid/support/v17/leanback/widget/picker/c$a;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->l:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->h:Landroid/support/v17/leanback/widget/picker/c$a;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/picker/c$a;->a:Ljava/util/Locale;

    invoke-static {v0, v1}, Landroid/support/v17/leanback/widget/picker/c;->a(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->l:Ljava/util/Calendar;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->i:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->h:Landroid/support/v17/leanback/widget/picker/c$a;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/picker/c$a;->a:Ljava/util/Locale;

    invoke-static {v0, v1}, Landroid/support/v17/leanback/widget/picker/c;->a(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->i:Ljava/util/Calendar;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->j:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->h:Landroid/support/v17/leanback/widget/picker/c$a;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/picker/c$a;->a:Ljava/util/Locale;

    invoke-static {v0, v1}, Landroid/support/v17/leanback/widget/picker/c;->a(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->j:Ljava/util/Calendar;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->k:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->h:Landroid/support/v17/leanback/widget/picker/c$a;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/picker/c$a;->a:Ljava/util/Locale;

    invoke-static {v0, v1}, Landroid/support/v17/leanback/widget/picker/c;->a(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->k:Ljava/util/Calendar;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->a:Landroid/support/v17/leanback/widget/picker/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->a:Landroid/support/v17/leanback/widget/picker/b;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->h:Landroid/support/v17/leanback/widget/picker/c$a;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/picker/c$a;->b:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/picker/b;->a([Ljava/lang/CharSequence;)V

    iget v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->d:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->a:Landroid/support/v17/leanback/widget/picker/b;

    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/picker/DatePicker;->a(ILandroid/support/v17/leanback/widget/picker/b;)V

    :cond_0
    return-void
.end method

.method private b(Z)V
    .locals 1

    new-instance v0, Landroid/support/v17/leanback/widget/picker/DatePicker$1;

    invoke-direct {v0, p0, p1}, Landroid/support/v17/leanback/widget/picker/DatePicker$1;-><init>(Landroid/support/v17/leanback/widget/picker/DatePicker;Z)V

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/picker/DatePicker;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private static b(Landroid/support/v17/leanback/widget/picker/b;I)Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/b;->d()I

    move-result v0

    if-eq p1, v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/picker/b;->d(I)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-boolean v0, Landroid/support/v17/leanback/widget/picker/c;->a:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->h:Landroid/support/v17/leanback/widget/picker/c$a;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/picker/c$a;->a:Ljava/util/Locale;

    invoke-static {v0, p1}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "MM/dd/yyyy"

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    instance-of v1, v0, Ljava/text/SimpleDateFormat;

    if-eqz v1, :cond_2

    check-cast v0, Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/text/SimpleDateFormat;->toLocalizedPattern()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, "MM/dd/yyyy"

    goto :goto_0
.end method

.method a()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->o:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/picker/DatePicker;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x6

    new-array v8, v0, [C

    fill-array-data v8, :array_0

    move v0, v1

    move v2, v1

    move v3, v1

    :goto_0
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_6

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v9, 0x20

    if-ne v4, v9, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/16 v9, 0x27

    if-ne v4, v9, :cond_2

    if-nez v2, :cond_1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    :goto_2
    move v3, v4

    goto :goto_1

    :cond_4
    invoke-static {v4, v8}, Landroid/support/v17/leanback/widget/picker/DatePicker;->a(C[C)Z

    move-result v9

    if-eqz v9, :cond_5

    if-eq v4, v3, :cond_3

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v6

    :array_0
    .array-data 2
        0x59s
        0x79s
        0x4ds
        0x6ds
        0x44s
        0x64s
    .end array-data
.end method

.method public final a(II)V
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->l:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->k:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/picker/DatePicker;->a(I)Landroid/support/v17/leanback/widget/picker/b;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/picker/b;->a()I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->e:I

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->l:Ljava/util/Calendar;

    sub-int v0, p2, v0

    invoke-virtual {v1, v6, v0}, Ljava/util/Calendar;->add(II)V

    :goto_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->l:Ljava/util/Calendar;

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->l:Ljava/util/Calendar;

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->l:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Landroid/support/v17/leanback/widget/picker/DatePicker;->a(III)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/picker/DatePicker;->b(Z)V

    return-void

    :cond_0
    iget v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->d:I

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->l:Ljava/util/Calendar;

    sub-int v0, p2, v0

    invoke-virtual {v1, v5, v0}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    :cond_1
    iget v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->f:I

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->l:Ljava/util/Calendar;

    sub-int v0, p2, v0

    invoke-virtual {v1, v4, v0}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method a(Z)V
    .locals 11

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x3

    new-array v7, v0, [I

    iget v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->e:I

    aput v0, v7, v3

    iget v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->d:I

    aput v0, v7, v2

    const/4 v0, 0x2

    iget v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->f:I

    aput v1, v7, v0

    sget-object v0, Landroid/support/v17/leanback/widget/picker/DatePicker;->p:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    move v6, v0

    move v4, v2

    move v5, v2

    :goto_0
    if-ltz v6, :cond_6

    aget v0, v7, v6

    if-gez v0, :cond_0

    move v0, v4

    :goto_1
    add-int/lit8 v1, v6, -0x1

    move v6, v1

    move v4, v0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/support/v17/leanback/widget/picker/DatePicker;->p:[I

    aget v8, v0, v6

    aget v0, v7, v6

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/picker/DatePicker;->a(I)Landroid/support/v17/leanback/widget/picker/b;

    move-result-object v9

    if-eqz v5, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->i:Ljava/util/Calendar;

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {v9, v0}, Landroid/support/v17/leanback/widget/picker/DatePicker;->a(Landroid/support/v17/leanback/widget/picker/b;I)Z

    move-result v0

    or-int/2addr v0, v3

    :goto_2
    if-eqz v4, :cond_3

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->j:Ljava/util/Calendar;

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {v9, v1}, Landroid/support/v17/leanback/widget/picker/DatePicker;->b(Landroid/support/v17/leanback/widget/picker/b;I)Z

    move-result v1

    or-int/2addr v0, v1

    :goto_3
    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->k:Ljava/util/Calendar;

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v10, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->i:Ljava/util/Calendar;

    invoke-virtual {v10, v8}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-ne v1, v10, :cond_4

    move v1, v2

    :goto_4
    and-int/2addr v5, v1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->k:Ljava/util/Calendar;

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v10, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->j:Ljava/util/Calendar;

    invoke-virtual {v10, v8}, Ljava/util/Calendar;->get(I)I

    move-result v10

    if-ne v1, v10, :cond_5

    move v1, v2

    :goto_5
    and-int/2addr v1, v4

    if-eqz v0, :cond_1

    aget v0, v7, v6

    invoke-virtual {p0, v0, v9}, Landroid/support/v17/leanback/widget/picker/DatePicker;->a(ILandroid/support/v17/leanback/widget/picker/b;)V

    :cond_1
    aget v0, v7, v6

    iget-object v4, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->k:Ljava/util/Calendar;

    invoke-virtual {v4, v8}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {p0, v0, v4, p1}, Landroid/support/v17/leanback/widget/picker/DatePicker;->a(IIZ)V

    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->k:Ljava/util/Calendar;

    invoke-virtual {v0, v8}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v0

    invoke-static {v9, v0}, Landroid/support/v17/leanback/widget/picker/DatePicker;->a(Landroid/support/v17/leanback/widget/picker/b;I)Z

    move-result v0

    or-int/2addr v0, v3

    goto :goto_2

    :cond_3
    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->k:Ljava/util/Calendar;

    invoke-virtual {v1, v8}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    invoke-static {v9, v1}, Landroid/support/v17/leanback/widget/picker/DatePicker;->b(Landroid/support/v17/leanback/widget/picker/b;I)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_3

    :cond_4
    move v1, v3

    goto :goto_4

    :cond_5
    move v1, v3

    goto :goto_5

    :cond_6
    return-void
.end method

.method public getDate()J
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->k:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getDatePickerFormat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxDate()J
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->j:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->i:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public setDatePickerFormat(Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Ljava/lang/String;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/DatePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([C)V

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->o:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iput-object p1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->o:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/picker/DatePicker;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    if-eq v2, v3, :cond_2

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Separators size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " must equal"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " the size of datePickerFormat: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " + 1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/picker/DatePicker;->setSeparators(Ljava/util/List;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->b:Landroid/support/v17/leanback/widget/picker/b;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->a:Landroid/support/v17/leanback/widget/picker/b;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->c:Landroid/support/v17/leanback/widget/picker/b;

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->d:I

    iput v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->e:I

    iput v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->f:I

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    const/4 v0, 0x3

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v1

    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_6

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "datePicker format error"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget-object v4, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->c:Landroid/support/v17/leanback/widget/picker/b;

    if-eqz v4, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "datePicker format error"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v4, Landroid/support/v17/leanback/widget/picker/b;

    invoke-direct {v4}, Landroid/support/v17/leanback/widget/picker/b;-><init>()V

    iput-object v4, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->c:Landroid/support/v17/leanback/widget/picker/b;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->f:I

    iget-object v4, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->c:Landroid/support/v17/leanback/widget/picker/b;

    const-string v5, "%d"

    invoke-virtual {v4, v5}, Landroid/support/v17/leanback/widget/picker/b;->a(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :sswitch_1
    iget-object v4, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->a:Landroid/support/v17/leanback/widget/picker/b;

    if-eqz v4, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "datePicker format error"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v4, Landroid/support/v17/leanback/widget/picker/b;

    invoke-direct {v4}, Landroid/support/v17/leanback/widget/picker/b;-><init>()V

    iput-object v4, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->a:Landroid/support/v17/leanback/widget/picker/b;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->a:Landroid/support/v17/leanback/widget/picker/b;

    iget-object v5, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->h:Landroid/support/v17/leanback/widget/picker/c$a;

    iget-object v5, v5, Landroid/support/v17/leanback/widget/picker/c$a;->b:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/support/v17/leanback/widget/picker/b;->a([Ljava/lang/CharSequence;)V

    iput v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->d:I

    goto :goto_2

    :sswitch_2
    iget-object v4, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->b:Landroid/support/v17/leanback/widget/picker/b;

    if-eqz v4, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "datePicker format error"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v4, Landroid/support/v17/leanback/widget/picker/b;

    invoke-direct {v4}, Landroid/support/v17/leanback/widget/picker/b;-><init>()V

    iput-object v4, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->b:Landroid/support/v17/leanback/widget/picker/b;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->b:Landroid/support/v17/leanback/widget/picker/b;

    const-string v5, "%02d"

    invoke-virtual {v4, v5}, Landroid/support/v17/leanback/widget/picker/b;->a(Ljava/lang/String;)V

    iput v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->e:I

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v3}, Landroid/support/v17/leanback/widget/picker/DatePicker;->setColumns(Ljava/util/List;)V

    invoke-direct {p0, v1}, Landroid/support/v17/leanback/widget/picker/DatePicker;->b(Z)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_2
        0x4d -> :sswitch_1
        0x59 -> :sswitch_0
    .end sparse-switch
.end method

.method public setMaxDate(J)V
    .locals 5

    const/4 v3, 0x6

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->l:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->l:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->j:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->l:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->j:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->j:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->k:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->j:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->k:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->j:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/picker/DatePicker;->b(Z)V

    goto :goto_0
.end method

.method public setMinDate(J)V
    .locals 5

    const/4 v3, 0x6

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->l:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->l:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->i:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->l:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->i:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->i:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->k:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->i:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->k:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/picker/DatePicker;->i:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v17/leanback/widget/picker/DatePicker;->b(Z)V

    goto :goto_0
.end method
